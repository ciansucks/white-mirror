using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public GameObject Player;

    public GameObject ghost;
    private Vector3 offset;
    public float MoveSpeed = 0.05f;
    public bool UseOffset = true;

    public bool ghostLook = false;
  

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

        if (Input.GetButtonDown("ToggleCamera"))
        {

            ghostLook = !ghostLook;
        }

        Vector3 playerPosition = Player.transform.position;

        if (ghostLook)
        {

            Vector3 ghostPosition = ghost.transform.position;
            Vector3 lookPosition = (playerPosition + ghostPosition) / 2;



            transform.LookAt(lookPosition);

        }

        else transform.LookAt(playerPosition);

    }

   

}
    

