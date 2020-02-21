using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{

    public GameObject reflectionPlane;
    private bool shifted = false;




    CharacterController characterController;

    public float speed = 6.0f;
    public float jumpSpeed = 8.0f;
    public float gravity = 20.0f;

    private Vector3 moveDirection = Vector3.zero;

    // Start is called before the first frame update
    void Start()
    {
        characterController = GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        if(characterController.isGrounded)
        {
            Vector3 movementVector = Vector3.zero;
            movementVector.x = Input.GetAxis("Horizontal");
            movementVector.z = Input.GetAxis("Vertical");

            //  GetComponent<Rigidbody>().AddForce(movementVector * moveSpeed);


            moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0.0f, Input.GetAxis("Vertical"));
            moveDirection *= speed;


            if (Input.GetButton("Jump"))
            {
                moveDirection.y = jumpSpeed;
            }
        }
        moveDirection.y -= gravity * Time.deltaTime;

        characterController.Move(moveDirection * Time.deltaTime);

        if (Input.GetButtonDown("Reflect"))
        {
            Debug.Log("Player Position: " + transform.position);
            reflect(reflectionPlane);
            Debug.Log("New Player Position: " + transform.position);

        }

    }

    void reflect(GameObject reflectionField)
    {


        float offset = reflectionField.transform.position.x - transform.position.x;
        Debug.Log("Offset: " + offset);
        Debug.Log("ReflectionField Position: " + reflectionField.transform.position);
        
        Vector3 newPosition = new Vector3(reflectionField.transform.position.x + offset, transform.position.y, transform.position.z);
        Debug.Log("Setting Position: " + newPosition);

        transform.position = newPosition;

    }

    private void OnTriggerEnter(Collider collision)
    {
        Debug.Log("Entered trigger zone of " + collision.gameObject);
        if (collision.gameObject.CompareTag("ReflectionField"))
        {
            reflectionPlane = collision.gameObject;
        }
    }
}
