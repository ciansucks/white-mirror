using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public GameObject Player;
    private Vector3 offset;
    public float MoveSpeed = 0.05f;
    public bool UseOffset = true;
  

    // Start is called before the first frame update
    void Start()
    {
        if (UseOffset)
        {
            offset = transform.position - Player.transform.position;
        }
    }

    // Update is called once per frame
    void FixedUpdate()
    {

        transform.position = Vector3.Lerp(transform.position, Player.transform.position + offset, MoveSpeed);

    }
    
}
