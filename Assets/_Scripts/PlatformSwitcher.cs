using Boo.Lang;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A class that changes the colors of Platforms after the Color Switch button is pressed.
/// </summary>
public class PlatformSwitcher : MonoBehaviour
{
    private GameObject[] rPlatforms, bPlatforms;
    private Color eRed, eBlue;

    private void Start()
    {
        //get all Dim Switch platforms
        rPlatforms = GameObject.FindGameObjectsWithTag("Platform_Red");
        bPlatforms = GameObject.FindGameObjectsWithTag("Platform_Blue");

        //get initial red glow
        Renderer r = rPlatforms[0].GetComponent<Renderer>();
        Material[] mats = r.materials;
        eRed = mats[1].GetColor("_EmissiveColor") * 2;

        //get initial blue glow
        Renderer b = bPlatforms[0].GetComponent<Renderer>();
        mats = b.materials;
        eBlue = mats[1].GetColor("_EmissiveColor") * 2;

        SetActivePlatforms();
    }
    /// <summary>
    /// Swaps whether the platform is a collider or a trigger. 
    /// Platforms whose tag matches the player's are colliders, and the other type are triggers.
    /// </summary>
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
        if (rPlatforms[0].GetComponent<BoxCollider>().isTrigger != rTrig)
        {
            foreach (GameObject o in rPlatforms)
            {
                o.GetComponent<BoxCollider>().isTrigger = rTrig;
                Renderer r = o.GetComponent<Renderer>();
                SetPlatformMaterials(r, rTrig, eRed, 2f);

            }
        }
        //check blue platforms
        if (bPlatforms[0].GetComponent<BoxCollider>().isTrigger != bTrig)
        {
            foreach (GameObject o in bPlatforms)
            {
                o.GetComponent<BoxCollider>().isTrigger = bTrig;
                Renderer r = o.GetComponent<Renderer>();
                SetPlatformMaterials(r, bTrig, eBlue, 5f);
            }
        }
    }
    /// <summary>
    /// Helper method that changes the two materials on a platform. The first is the base material, the second
    /// is an emissive glow material.
    /// </summary>
    /// <param name="r"></param>
    /// <param name="trigger"></param>
    /// <param name="newColor"></param>
    /// <param name="scale"></param>
    private void SetPlatformMaterials(Renderer r, bool trigger, Color newColor, float scale)
    {
        Material[] mats = r.materials;
        Color baseCol = mats[0].color;

        if (trigger)
        {
            baseCol.a = .1f;
            mats[1].SetColor("_EmissiveColor", newColor / scale);

        }
        else
        {
            baseCol.a = .75f;
            mats[1].SetColor("_EmissiveColor", newColor * scale);

        }
        mats[0].SetColor("_BaseColor", baseCol);
    }

}
