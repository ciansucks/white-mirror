using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
public class DimensionInput : MonoBehaviour
{

    public Image PlatformBar;
    public UnityEvent ColorSwapEvent;
    public string playerColor;
    private bool colorPress, colorTrigger;
    private Color dRed = new Color32(255, 85, 85, 80);
    private Color dBlue = new Color32(84, 255, 255, 80);
    private GameObject currTrigger = null;



    private Color backpackRed = new Color32(255, 85, 85, 255);
    private Color backpackBlue = new Color32(84, 255, 255, 255);
    public GameObject playerBackpack;
    public Light backpackLight;

    public GameObject ghostBackpack;
    public Light ghostBackpackLight;

    void Start()
    {
        if (playerColor.ToUpper() == "RED")
            PlatformBar.color = dRed;
        else
            PlatformBar.color = dBlue;

        this.tag = "Player_" + playerColor;

        colorTrigger = false;
    }

    // Update is called once per frame
    void Update()
    {
        colorPress = Input.GetButtonDown("DimSwitch");
        if (colorPress && !colorTrigger)
            SwitchColor();
    }
    /// <summary>
    /// On keypress, change the character's color and send an event to update any color platforms as needed
    /// </summary>
    private void SwitchColor()
    {

        if (PlatformBar.color == dRed)
        {
            PlatformBar.color = dBlue;

            SetBackpackColor(backpackBlue);

          

            this.tag = "Player_Blue";
        }
        else
        {
            PlatformBar.color = dRed;



            SetBackpackColor(backpackRed);



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

            colorTrigger = true;
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
                colorTrigger = false;
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
