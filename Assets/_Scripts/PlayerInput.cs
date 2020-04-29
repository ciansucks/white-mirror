using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    public GameObject parent;
    public GameManager manager;


    public GameObject reflectionPlane;


    public GameObject reflectionPlane_Blue;
    public GameObject reflectionPlane_Red;

    public string playerColor;

    public float ghostHeightOffset = -0.58f;


    public Animator playerAnimator;

    public Animator ghostAnimator;

    public float jumpCoolDown = 6.0f;
    private float timeSinceJump = 0.0f;

    private float timeBetweenJumps = 1.0f;

    public float reflectionCoolDown = 1.0f;
    private float timeSinceReflection = 0.0f;

    private bool reflecting = false; //If true, call reflection method

    private bool canJump = true;


    private bool shifted = false;

    DimensionInput colorSwapScript;



    CharacterController characterController;

    public float speed = 6.0f;
    public float jumpSpeed = 8.0f;
    public float gravity = 20.0f;

    private Vector3 moveDirection = Vector3.zero;
    private Vector3 tempMoveDirection;

    public GameObject ghost;

    private float tempJumpVelocity;

    // Start is called before the first frame update
    void Start()
    {
        
        characterController = GetComponent<CharacterController>();

        GameObject thePlayer = GameObject.Find("ThePlayer");
        colorSwapScript = this.GetComponent<DimensionInput>();

        //ghost = this.transform.Find("Ghost").gameObject;

    }

    // Update is called once per frame
    void FixedUpdate()
    {

        if (moveDirection != Vector3.zero)
        {
            tempMoveDirection = moveDirection;
            tempMoveDirection.y = 0.0f; //We zero this out so the player doesn't rotate up or down

            if (tempMoveDirection != Vector3.zero)
            {
                transform.rotation = Quaternion.LookRotation(tempMoveDirection * -1.0f); //This is where facing is determined
                ghost.transform.rotation = Quaternion.LookRotation(tempMoveDirection * 1.0f);
            }

        }
        else
        {
            tempMoveDirection = new Vector3(0, 0, 0);
        }
       
      

        if (tempJumpVelocity != 0)
        {
            moveDirection.y = tempJumpVelocity;
        }
        //Gravity effects
        moveDirection.y -= gravity * Time.deltaTime;

        tempJumpVelocity = 0;

        characterController.Move(moveDirection * Time.deltaTime);

        //Positioning the ghost
        if (this.tag == "Player_Blue" && reflectionPlane_Blue != null)
        {
            ghost.SetActive(true);
            float offset = reflectionPlane_Blue.transform.position.x - transform.position.x;

            Vector3 ghostPosition = new Vector3(reflectionPlane_Blue.transform.position.x + offset, transform.position.y + ghostHeightOffset, transform.position.z);
            ghost.transform.position = ghostPosition;
        }
        else if(this.tag == "Player_Red" && reflectionPlane_Red != null)
        {
            ghost.SetActive(true);
            float offset = reflectionPlane_Red.transform.position.z - transform.position.z;

            Vector3 ghostPosition = new Vector3(transform.position.x, transform.position.y + ghostHeightOffset, reflectionPlane_Red.transform.position.z + offset);
            
            ghost.transform.position = ghostPosition;
        }

        if (reflecting)
        {
            reflecting = false;
            reflect(reflectionPlane);
        }
        

    }

    void Update()
    {
        //Set animator movement speed
        playerAnimator.SetFloat("Speed", tempMoveDirection.magnitude);
        ghostAnimator.SetFloat("Speed", tempMoveDirection.magnitude);

        colorSwapScript = this.GetComponent<DimensionInput>();

        timeSinceReflection += Time.deltaTime;
        timeSinceJump += Time.deltaTime;
        //Start of movement inputs

        if (Input.anyKeyDown)
        {
            Debug.Log(Input.inputString);
        }
        if (characterController.isGrounded)
        {

            moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0.0f, Input.GetAxis("Vertical"));
            moveDirection *= speed;

            if (Input.GetButtonDown("Jump") && canJump)
            {
              //  PlayerSoundManager.PlaySound("jump");  //Jump Sound Effect

               canJump = false;

                timeSinceJump = 0.0f;
                tempJumpVelocity = jumpSpeed;
                playerAnimator.SetBool("Jump", true); // setting animation for jump equal to true when clicked
                ghostAnimator.SetBool("Jump", true);

                Invoke("setJumpFalse", 0.2f);
                Invoke("jumpReset", timeBetweenJumps);
               
                
            }

        }

        else if (characterController.isGrounded == false) // Here I independently allow for both X and Z movement. 
        {
            moveDirection.x = Input.GetAxis("Horizontal") * speed;
            moveDirection.z = Input.GetAxis("Vertical") * speed;
           // Debug.Log(moveDirection);
        }

        if (Input.GetButtonDown("Reflect"))
        {
            Debug.Log("Time since reflection: " + timeSinceReflection);
            Debug.Log("Reflection Cooldown: " + reflectionCoolDown);
            if (timeSinceReflection > reflectionCoolDown)
            {
                timeSinceReflection = 0;
                reflecting = true;
            }
        }

        

    }

    void reflect(GameObject reflectionField)
    {
        
        
        if (this.tag == "Player_Blue" && reflectionPlane_Blue != null)
        {
            PlayerSoundManager.PlaySound("reflect"); //Reflection sound
            float offset = reflectionPlane_Blue.transform.position.x - transform.position.x;
          //  Debug.Log("Offset: " + offset);
          //  Debug.Log("Blue ReflectionField Position: " + reflectionPlane_Blue.transform.position);

            Vector3 newPosition = new Vector3(reflectionPlane_Blue.transform.position.x + offset, transform.position.y, transform.position.z);
          //  Debug.Log("Setting Position: " + newPosition);

            transform.position = newPosition;
        }

        else if (this.tag == "Player_Red" && reflectionPlane_Red != null)
        {
            PlayerSoundManager.PlaySound("reflect"); //Reflection sound
            Debug.Log("Reflecting across Red Plane.");
            Debug.Log("Player Position: " + transform.position);

            float offset = reflectionPlane_Red.transform.position.z - transform.position.z;


            Debug.Log("Red ReflectionField Position: " + reflectionPlane_Red.transform.position);
            Debug.Log("Offset: " + offset);
           

            Vector3 newPosition = new Vector3(transform.position.x, transform.position.y, reflectionPlane_Red.transform.position.z + offset);
            Debug.Log("Setting Position: " + newPosition);

            transform.position = newPosition;

            Debug.Log("New Player Position: " + transform.position);
        }


       

    }

    private void jumpReset()
    {
        canJump = true;

      //  PlayerSoundManager.PlaySound("land"); //Landing sound effect
    }

    private void setJumpFalse()
    {
        playerAnimator.SetBool("Jump", false);
        ghostAnimator.SetBool("Jump", false);
    }

    private void OnTriggerEnter(Collider collision)
    {
        Debug.Log("Entered trigger zone of " + collision.gameObject);
        if (collision.gameObject.CompareTag("ReflectionField_Blue"))
        {
            reflectionPlane_Blue = collision.gameObject;
       //     Debug.Log("Blue reflection plane: " + reflectionPlane_Blue);
        }
        if (collision.gameObject.CompareTag("ReflectionField_Red"))
        {
            reflectionPlane_Red = collision.gameObject;
     //       Debug.Log("Red reflection plane: " + reflectionPlane_Red);

        }
        if(collision.gameObject.CompareTag("Death"))
        {
            Debug.Log("Player should Die");
            manager.gameOver();
        }
        if(collision.gameObject.CompareTag("LevelTransition"))
        {
            Debug.Log("Moving to next scene");

            string transitionType = collision.gameObject.GetComponent<LevelTransitionData>().levelTransitionType;
            manager.loadNextScene(transitionType);
        }
        

        if (collision.gameObject.tag == "Moving_Platform" || collision.gameObject.tag == "Moving_Platform_Red" || collision.gameObject.tag == "Moving_Platform_Blue")
        {
            parent.transform.SetParent(collision.gameObject.transform, true);
           // this.transform.SetParent(collision.gameObject.transform, true);
        }

    }

    private void OnTriggerStay(Collider collision)
    {
        

        //this.transform.parent = other.gameObject.transform; //Change "myPlayer" to your player
    }


    private void OnTriggerExit(Collider collision)
    {
      //  Debug.Log("Exited trigger zone of " + collision.gameObject);
        if (collision.gameObject.CompareTag("ReflectionField_Blue"))
        {
            ghost.SetActive(false);
            reflectionPlane_Blue = null;
           
        }
        if (collision.gameObject.CompareTag("ReflectionField_Red"))
        {
            ghost.SetActive(false);
            reflectionPlane_Red = null;
            
        }
        if(collision.gameObject.tag=="Moving_Platform" || collision.gameObject.tag == "Moving_Platform_Red" || collision.gameObject.tag == "Moving_Platform_Blue")
        {
            parent.transform.SetParent(null, true);

            //this.transform.SetParent(null, true);
        }
    }
}
