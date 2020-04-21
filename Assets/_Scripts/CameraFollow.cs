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

    public Transform Obstruction;
  

    // Start is called before the first frame update
    void Start()
    {
        if (UseOffset)
        {
            offset = transform.position - Player.transform.position;
        }

        Obstruction = Player.transform;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        Vector3 playerPosition = Player.transform.position;


        transform.position = Vector3.Lerp(transform.position, Player.transform.position + offset, MoveSpeed);

       
       /* if(Input.GetButtonUp("ToggleCamera"))
        {
            ghostLook = false;
            transform.LookAt(playerPosition);
           
        }*/

        
        if (ghostLook)
        {

            Vector3 ghostPosition = ghost.transform.position;
            Vector3 lookPosition = (playerPosition + ghostPosition) / 2;



            transform.LookAt(lookPosition);

        }

        else transform.LookAt(playerPosition);

    }

   void Update()
    {
        if (Input.GetButtonDown("ToggleCamera") && ghost.activeInHierarchy)
        {

            ghostLook = !ghostLook;
        }
    }

    private void LateUpdate()
    {
        viewObstructed();
    }

    void viewObstructed()
    {

        
        RaycastHit hit;

        if(Physics.Raycast(transform.position, Player.transform.position-transform.position, out hit, 4.5f))
        {
            if(hit.collider.gameObject.tag == "StaticEnvironment")
            {
                Obstruction = hit.transform;
           
                Obstruction.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.ShadowsOnly;

                
            }

            else
            {
                Obstruction.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.On;
            }
        }
    }

}
    

