﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{

    public GameObject reflectionPlane;


    public GameObject reflectionPlane_Blue;
    public GameObject reflectionPlane_Red;

    public string playerColor;

    private bool shifted = false;

    PlayerDimensionShifting colorSwapScript;




    CharacterController characterController;

    public float speed = 6.0f;
    public float jumpSpeed = 8.0f;
    public float gravity = 20.0f;

    private Vector3 moveDirection = Vector3.zero;

    public GameObject ghost;

    // Start is called before the first frame update
    void Start()
    {
        characterController = GetComponent<CharacterController>();

        GameObject thePlayer = GameObject.Find("ThePlayer");
        colorSwapScript = this.GetComponent<PlayerDimensionShifting>();

        ghost = this.transform.Find("Ghost").gameObject;

    }

    // Update is called once per frame
    void Update()
    {
        colorSwapScript = this.GetComponent<PlayerDimensionShifting>();




        if (characterController.isGrounded)
        {
          
            moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0.0f, Input.GetAxis("Vertical"));
            moveDirection *= speed;
           

            if (Input.GetButton("Jump"))
            {
                moveDirection.y = jumpSpeed;
            }

        }

        else if (characterController.isGrounded == false) // Here I independently allow for both X and Z movement. 

        {
            moveDirection.x = Input.GetAxis("Horizontal") * -1 * speed;
            moveDirection.z = Input.GetAxis("Vertical") * -1 * speed;
            moveDirection = transform.TransformDirection(moveDirection);// Then reassign the current transform to the Vector 3.
                                 
        }

        //if (moveDirection != Vector3.zero) transform.rotation = Quaternion.LookRotation(moveDirection);




        moveDirection.y -= gravity * Time.deltaTime;

        characterController.Move(moveDirection * Time.deltaTime);

        if (this.tag == "Player_Blue" && reflectionPlane_Blue != null)
        {
            ghost.SetActive(true);
            float offset = reflectionPlane_Blue.transform.position.x - transform.position.x;

            Vector3 ghostPosition = new Vector3(reflectionPlane_Blue.transform.position.x + offset, transform.position.y, transform.position.z);
            ghost.transform.position = ghostPosition;
        }


        else if(this.tag == "Player_Red" && reflectionPlane_Red != null)
        {
            ghost.SetActive(true);
            float offset = reflectionPlane_Red.transform.position.z - transform.position.z;

            Vector3 ghostPosition = new Vector3(transform.position.x, transform.position.y, reflectionPlane_Red.transform.position.z + offset);
            ghost.transform.position = ghostPosition;
        }


        if (Input.GetButtonDown("Reflect"))
        {
        
            reflect(reflectionPlane);

        }

    }

    void reflect(GameObject reflectionField)
    {
        if (this.tag == "Player_Blue" && reflectionPlane_Blue != null)
        {

            float offset = reflectionPlane_Blue.transform.position.x - transform.position.x;
          //  Debug.Log("Offset: " + offset);
          //  Debug.Log("Blue ReflectionField Position: " + reflectionPlane_Blue.transform.position);

            Vector3 newPosition = new Vector3(reflectionPlane_Blue.transform.position.x + offset, transform.position.y, transform.position.z);
          //  Debug.Log("Setting Position: " + newPosition);

            transform.position = newPosition;
        }

        else if (this.tag == "Player_Red" && reflectionPlane_Red != null)
        {
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
    }
}