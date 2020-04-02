using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
public class PlayerDimensionShifting : MonoBehaviour
{

    public Image PlatformBar;
    public UnityEvent ColorSwapEvent;
    public string playerColor;
    private bool isJumping, colorPress, colorCollision, colorTrigger;
    private Color dRed;
    private Color dBlue;
    private GameObject currTrigger = null;
    // Start is called before the first frame update
    void Start()
    {
        dBlue = new Color32(84, 255, 255, 80);
        dRed = new Color32(255, 85, 85, 80);
        if (playerColor.ToUpper() == "RED")
            PlatformBar.color = dRed;
        else
            PlatformBar.color = dBlue;

        this.tag = "Player_" + playerColor;
        Debug.Log("Player_" + playerColor);

        colorCollision = false;
        colorTrigger = false;

    }

    // Update is called once per frame
    void Update()
    {
        colorPress = Input.GetButtonDown("DimSwitch");
        if (colorPress && !colorCollision && !colorTrigger)
            SwitchColor();
    }
    /// <summary>
    /// On keypress, change the character's color and send an event to update any enemies or players as needed
    /// </summary>
    private void SwitchColor()
    {

        if (PlatformBar.color == dRed)
        {
            PlatformBar.color = dBlue;
            this.tag = "Player_Blue";
        }
        else
        {
            PlatformBar.color = dRed;
            this.tag = "Player_Red";
        }

        ColorSwapEvent.Invoke();
        Debug.Log("Swapping color to:" + this.tag);
    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Platform_Red") || collision.collider.CompareTag("Platform_Blue"))
        {
            colorCollision = true;
            Debug.Log("Touching platform");
        }
    }

    private void OnCollisionExit(Collision collision)
    {
        if (collision.collider.CompareTag("Platform_Red") || collision.collider.CompareTag("Platform_Blue"))
        {
            colorCollision = false;
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Platform_Red") || other.CompareTag("Platform_Blue"))
        {
            if (currTrigger == null)
            {
                currTrigger = other.gameObject;
            }
            colorTrigger = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Platform_Red") || other.CompareTag("Platform_Blue"))
        {
            if (currTrigger.Equals(other.gameObject))
            {
                colorTrigger = false;
                currTrigger = null;
            }
        }
    }

}
