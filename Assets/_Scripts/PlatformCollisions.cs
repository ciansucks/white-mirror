using Boo.Lang;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformCollisions : MonoBehaviour
{
    private GameObject[] RedPlat;
    private GameObject[] BluePlat;
    private Color startRed, startBlue;
    /// <summary>
    /// Called on ColorEvent.Invoke() in the PlayerInput class. 
    /// </summary>
    /// <param name="Player"></param>
    private void Start()
    {
        RedPlat = GameObject.FindGameObjectsWithTag("Platform_Red");
        BluePlat = GameObject.FindGameObjectsWithTag("Platform_Blue");
        Renderer r = RedPlat[0].GetComponent<Renderer>();
        Material[] mats = r.materials;
        startRed = mats[1].GetColor("_EmissiveColor")*5;

        Renderer b = BluePlat[0].GetComponent<Renderer>();
        Material[] mats2 = b.materials;
        startBlue = mats2[1].GetColor("_EmissiveColor")*5;

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
                Material[] mats = r.materials;
                Color newColor = mats[0].color;
               // Color newGlow = mats[1].GetColor("_EmissiveColor");

                if (rTrig)
                {
                    newColor.a = .15f;
                    mats[1].SetColor("_EmissiveColor", startRed/2f);
                }
                else
                {
                    newColor.a = .5f;
                    mats[1].SetColor("_EmissiveColor", startRed * 2f);
                }

                mats[0].SetColor("_BaseColor", newColor);

            }

        }

        if (BluePlat[0].GetComponent<BoxCollider>().isTrigger != bTrig)
        {
            foreach (GameObject o in BluePlat)
            {
                o.GetComponent<BoxCollider>().isTrigger = bTrig;
                Renderer r = o.GetComponent<Renderer>();
                Material[] mats = r.materials;
                Color newColor = mats[0].color;
                //Color newGlow = mats[1].GetColor("_EmissiveColor");

                if (bTrig)
                {
                    newColor.a = .15f;
                    mats[1].SetColor("_EmissiveColor", startBlue /5f);

                }
                else
                {
                    newColor.a = .5f;
                    mats[1].SetColor("_EmissiveColor", startBlue * 5f);

                }
                mats[0].SetColor("_BaseColor", newColor);
               // mats[1].SetColor("_EmissiveColor", newGlow);
            }
        }

    }

}
