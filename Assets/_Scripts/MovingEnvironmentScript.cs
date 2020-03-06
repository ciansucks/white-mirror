using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingEnvironmentScript : MonoBehaviour
{

    public GameObject moveObject;
    public GameObject originPoint;
    public GameObject destinationPoint;
    public bool isLoop;
    public float moveSpeed = 10.0f;

    public bool isMoving = false;

    private Vector3 originPosition;
    private Quaternion originRotation;
    private Vector3 destinationPosition;
    private Quaternion destinationRotation;

    public Vector3 destination;

    // Start is called before the first frame update
    void Start()
    {
        originPosition = originPoint.transform.position;
        originRotation = originPoint.transform.rotation;
        destinationPosition = destinationPoint.transform.position;
        destinationRotation = destinationPoint.transform.rotation;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (isMoving)
        {
            float step = moveSpeed * Time.deltaTime; // step size = speed * frame time
            moveObject.transform.position = Vector3.MoveTowards(moveObject.transform.position, destination, step); // moves position a step closer to the target position
            if(moveObject.transform.position == destination)
            {
                isMoving = false;
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (Input.GetButtonDown("ButtonPush"))
        {
            isMoving = true;

            
        }
    }

}

