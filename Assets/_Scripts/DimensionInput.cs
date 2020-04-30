using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using System;

/// <summary>
/// The controller that allows the player to Swap Colors. Does NOT handle the color changing of the platforms, it only changes the tag.
/// Backpack color edited here.
/// </summary>
public class DimensionInput : MonoBehaviour
{
    public enum PlayerColor
    {
        Red, Blue
    }

    public UnityEvent ColorSwapEvent;
    public PlayerColor col;
    private bool colorPress, inColorCollider;
    private GameObject currTrigger = null;

    private Color backpackRed = new Color32(255, 85, 85, 255);
    private Color backpackBlue = new Color32(84, 255, 255, 255);

    //Changes the Color of the backpacks
    public GameObject playerBackpack;
    public Light backpackLight;

    public GameObject ghostBackpack;
    public Light ghostBackpackLight;

    void Start()
    {
        this.tag = "Player_" + col.ToString();
        inColorCollider = false;
    }

    // Update is called once per frame
    void Update()
    {
        colorPress = Input.GetButtonDown("DimSwitch");
        if (colorPress && !inColorCollider)
        {
            SwitchColor();
        }
        else if (colorPress && inColorCollider)
        {
            PlayerSoundManager.PlaySound("phase_denied");
        }

    }
    /// <summary>
    /// On keypress, change the character's color and send an event to update any color platforms as needed
    /// </summary>
    private void SwitchColor()
    {

        if (this.tag == "Player_Red")
        {
            SetBackpackColor(backpackBlue);
            PlayerSoundManager.PlaySound("phase_red");

            this.tag = "Player_Blue";
        }
        else
        {
            SetBackpackColor(backpackRed);
            PlayerSoundManager.PlaySound("phase_blue");

            this.tag = "Player_Red";
        }

        ColorSwapEvent.Invoke();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Platform_Red") || other.CompareTag("Platform_Blue"))
        {
            if (currTrigger == null)//if not already in another trigger box, set the current Trigger to this      
                currTrigger = other.gameObject;

            inColorCollider = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Platform_Red") || other.CompareTag("Platform_Blue"))
        {
            //in case of overlapping trigger boxes - only allow switching if the first trigger has been left.
            //This case should only occur in "Jello" levels with a larger trigger with smaller triggers nestled inside.
            if (currTrigger.Equals(other.gameObject))
            {
                inColorCollider = false;
                currTrigger = null;
            }
        }
    }

    private void SetBackpackColor(Color newColor)
    {
        var backpackRenderer = playerBackpack.GetComponent<Renderer>();
        backpackRenderer.material.SetColor("_BaseColor", newColor);
        backpackRenderer.material.SetColor("_EmissiveColor", newColor);

        backpackLight.color = newColor;

        backpackRenderer = ghostBackpack.GetComponent<Renderer>();
        backpackRenderer.material.SetColor("_BaseColor", newColor);
        backpackRenderer.material.SetColor("_EmissiveColor", newColor);
        ghostBackpackLight.color = newColor;
    }

}
