﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingEnvironmentScript : MonoBehaviour
{
    public GameObject moveObject;

    private Vector3 originPosition;
    public Vector3 destination;

    private Vector3 currentDestination;
    public GameObject destinationPoint;
    public bool isLoop;
    //  public float moveSpeed = 10.0f;
    public bool simpleX;
    public bool simpleY;
    public bool simpleZ;
    public float simpleMoveDistance = 2.00f;

    private bool buttonPress = false;
    private bool inRange = false;
    public bool isMoving = false;
    public bool proximityActivation = false;
    public bool loopSound = false;
    public bool isSecondButton = false;

    //private Vector3 originPosition;
    private Quaternion originRotation;
    private Vector3 destinationPosition;
    private Quaternion destinationRotation;

    private AudioSource buttonAudioSource;
    private AudioSource objectAudioSource;

    public AudioClip[] objectSounds;

    public AudioClip buttonSound;
    public AudioClip objectSound;



    private float startTime;
    private float journeyLength;


    public float timeTakenDuringLerp = 1f;
    //public float distanceToMove = 10;
    private bool isLerping;

    private Vector3 startPosition;
    private Vector3 endPosition;

    private float timeStartedLerping;


    // Start is called before the first frame update
    void Start()
    {
        buttonAudioSource = GetComponent<AudioSource>();
        objectAudioSource = moveObject.GetComponent<AudioSource>();

        originPosition = moveObject.transform.position;
        if (simpleX)
        {
            destination = originPosition + new Vector3(simpleMoveDistance, 0, 0);
        }
        else if (simpleY)
        {
            destination = originPosition + new Vector3(0, simpleMoveDistance, 0);
        }
        else if (simpleZ)
        {
            destination = originPosition + new Vector3(0, 0, simpleMoveDistance);
        }

        currentDestination = destination;

        if (isSecondButton)
        {
            Vector3 tempOrigin = originPosition;
            originPosition = destination;
            destination = tempOrigin;
        }


        if (isMoving)
        {
            StartLerping();
        }

    }



    void StartLerping()
    {
        isLerping = true;
        timeStartedLerping = Time.time;
        startPosition = moveObject.transform.position;
        endPosition = currentDestination;
    }

    private void Update()
    {
        if (!proximityActivation && !isLerping && inRange && Input.GetButtonUp("ButtonPush"))
            PlayMotion();
    }
    // Update is called once per frame
    void FixedUpdate()
    {
        /*
        if (isMoving)
        {
        
            // Distance moved equals elapsed time times speed..
            float distCovered = (Time.time - startTime) * moveSpeed;

            // Fraction of journey completed equals current distance divided by total distance.
            float fractionOfJourney = distCovered / journeyLength;

            // Set our position as a fraction of the distance between the markers.
            moveObject.transform.position = Vector3.Lerp(originPosition, destination, fractionOfJourney);
            
            float step = moveSpeed * Time.deltaTime; // step size = speed * frame time
            moveObject.transform.position = Vector3.MoveTowards(moveObject.transform.position, currentDestination, step); // moves position a step closer to the target position

            if (moveObject.transform.position == currentDestination)
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

        */

        if (isLerping)
        {
            float timeSinceStarted = Time.time - timeStartedLerping;
            float percentageComplete = timeSinceStarted / timeTakenDuringLerp;

            moveObject.transform.position = Vector3.Lerp(startPosition, endPosition, percentageComplete);

            if (percentageComplete >= 1.0f)
            {


                if (currentDestination == destination)
                {
                    currentDestination = originPosition;
                }
                else
                {
                    currentDestination = destination;
                }

                if (!isLoop)
                {
                    isLerping = false;
                }
                else
                {
                    StartLerping();
                }
            }
        }

        else if (objectAudioSource != null && objectAudioSource.isPlaying)
        {
            objectAudioSource.Stop();
        }
    }

    private void PlayMotion()
    {

            StartLerping();
            buttonAudioSource.PlayOneShot(buttonSound);
            if (loopSound && !objectAudioSource.isPlaying)
            {
                objectAudioSource.clip = objectSound;
                objectAudioSource.Play();
            }
            else
            {
                objectAudioSource.PlayOneShot(objectSound);
            }

    }
    private void OnTriggerExit(Collider other)
    {
        inRange = false;
    }
    private void OnTriggerEnter(Collider other)
    {
        inRange = true;
        if (proximityActivation && !isLerping)
        {
            StartLerping();
        }
    }
}

