using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformCollisions : MonoBehaviour
{
    private GameObject[] RedPlat;
    private GameObject[] BluePlat;
    /// <summary>
    /// Called on ColorEvent.Invoke() in the PlayerInput class. 
    /// </summary>
    /// <param name="Player"></param>
    private void Start()
    {
        RedPlat = GameObject.FindGameObjectsWithTag("Platform_Red");
        BluePlat = GameObject.FindGameObjectsWithTag("Platform_Blue");
        Debug.Log("Blue platforms: " + BluePlat.Length);

        SetActivePlatforms();
    }
    public void SetActivePlatforms()
    {

        //true means the platform is a trigger and is inactive
        bool rTrig = true;
        bool bTrig = true;

        //check which color player is
        if (this.tag == "Player_Red")
            rTrig = false;
        else 
            bTrig = false;


        //if player passes through red, set red as tangible
        if (RedPlat[0].GetComponent<BoxCollider>().isTrigger != rTrig)
        {
            foreach (GameObject o in RedPlat)
            {
                o.GetComponent<BoxCollider>().isTrigger = rTrig;
                Renderer r = o.GetComponent<Renderer>();
                Color newColor = r.material.color;
                if (rTrig)
                    newColor.a = .15f;
                else
                    newColor.a = .5f;

                r.material.SetColor("_BaseColor", newColor);

            }

        }

        if (BluePlat[0].GetComponent<BoxCollider>().isTrigger != bTrig)
        {
            foreach (GameObject o in BluePlat)
            {
                o.GetComponent<BoxCollider>().isTrigger = bTrig;
                Renderer r = o.GetComponent<Renderer>();
                Color newColor = r.material.color;
                if (bTrig)
                    newColor.a = .15f;
                else
                    newColor.a = .5f;

                r.material.SetColor("_BaseColor", newColor);
            }
        }

    }

}
