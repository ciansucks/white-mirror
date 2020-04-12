using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingEnvironmentScript : MonoBehaviour
{

    public GameObject moveObject;

    public Vector3 originPosition;
    public Vector3 destination;
    


    private Vector3 currentDestination;
    public GameObject destinationPoint;
    public bool isLoop;
    public float moveSpeed = 10.0f;
    public bool simpleX;
    public bool simpleY;
    public bool simpleZ;
    public float simpleMoveDistance = 3.00f;

    public bool isMoving = false;

    //private Vector3 originPosition;
    private Quaternion originRotation;
    private Vector3 destinationPosition;
    private Quaternion destinationRotation;

    

    // Start is called before the first frame update
    void Start()
    {

        originPosition = moveObject.transform.position;
        if (simpleX)
        {
            destination = originPosition + new Vector3(simpleMoveDistance, 0, 0);
        }
        else if(simpleY)
        {
            destination = originPosition + new Vector3(0, simpleMoveDistance, 0);
        }
        else if(simpleZ)
        {
            destination = originPosition + new Vector3(0, 0, simpleMoveDistance);
        }
        
        
            currentDestination = destination;
        
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (isMoving)
        {
            float step = moveSpeed * Time.deltaTime; // step size = speed * frame time
            moveObject.transform.position = Vector3.MoveTowards(moveObject.transform.position, currentDestination, step); // moves position a step closer to the target position
            if(moveObject.transform.position == currentDestination)
            {
                if (!isLoop)
                {
                    isMoving = false;
                }
                
                    if(currentDestination == destination)
                    {
                        currentDestination = originPosition;

                    }
                    else
                    {
                        currentDestination = destination;
                    }
                
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (Input.GetButtonDown("ButtonPush"))
        {
            isMoving = !isMoving;

        }
    }

}

