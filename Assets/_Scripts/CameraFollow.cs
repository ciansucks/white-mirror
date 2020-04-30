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
    private GameObject currentHit;

    private List<GameObject> obstructed = new List<GameObject>();
    void Start()
    {
        if (UseOffset)
        {
            offset = transform.position - Player.transform.position;
        }
        Obstruction = Player.transform;
    }

    /// <summary>
    /// Update should be watching every frame for player input
    /// </summary>
    void Update()
    {
        if (Input.GetButtonDown("ToggleCamera") && ghost.activeInHierarchy)
        {
            ghostLook = !ghostLook;
        }
        else if (!ghost.activeInHierarchy)
        {
            ghostLook = false;
        }
    }
    /// <summary>
    /// Update the camera position after the Player is moved in Update (PlayerInput)
    /// </summary>
    private void LateUpdate()
    {

        transform.position = Vector3.Lerp(transform.position, Player.transform.position + offset, MoveSpeed);
        Vector3 playerPosition = Player.transform.position;

        if (ghostLook)//focus on plane 
        {
            Vector3 ghostPosition = ghost.transform.position;
            Vector3 lookPosition = (playerPosition + ghostPosition) / 2;
            transform.LookAt(lookPosition);
        }

        else transform.LookAt(playerPosition);
        setOpaque();

        viewObstructed();
    }

    void viewObstructed()
    {
        RaycastHit hit;

        if (Physics.Raycast(transform.position, Player.transform.position - transform.position, out hit, 4.5f))
        {
            if (hit.collider.gameObject.tag == "StaticEnvironment")
            {
                currentHit = hit.collider.gameObject;
                obstructed.Add(currentHit);
                Obstruction = hit.transform;
                Obstruction.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.ShadowsOnly;
            }
            else
            {
                currentHit = null;
                Obstruction.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.On;
            }
        }



    }
    void setOpaque()
    {
        List<GameObject> toRemove = new List<GameObject>();

        foreach (GameObject o in obstructed)
        {

            if (!Physics.Raycast(transform.position, o.transform.position - transform.position, out RaycastHit hit, 4.5f))
            {

                o.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.On;
                toRemove.Add(o);
            }
            //if (o.name != currentHit.name)
            //{
            //    o.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.On;
            //    toRemove.Add(o);
            //}
        }
        foreach (GameObject r in toRemove)
        {
            obstructed.Remove(r);
        }
    }

}


