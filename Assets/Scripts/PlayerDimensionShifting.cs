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
    private bool isGrounded, isJumping, colorPress, colorCollision;
    // Start is called before the first frame update
    void Start()
    {
        if (playerColor.ToUpper() == "RED")
            PlatformBar.color = Color.red;
        else
            PlatformBar.color = Color.blue;

        this.tag = "Player_" + playerColor;

        isGrounded = true;
        colorCollision = false;
    }

    // Update is called once per frame
    void Update()
    {
        colorPress = Input.GetKeyDown(KeyCode.G);
        if (colorPress && !colorCollision)
            SwitchColor();
    }
    /// <summary>
    /// On keypress, change the character's color and send an event to update any enemies or players as needed
    /// </summary>
    private void SwitchColor()
    {

        if (PlatformBar.color == Color.red)
        {
            PlatformBar.color = Color.blue;
            this.tag = "Player_Blue";
        }
        else
        {
            PlatformBar.color = Color.red;
            this.tag = "Player_Red";
        }

        ColorSwapEvent.Invoke();
        Debug.Log("Swapping color to:" + this.tag);
    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Platform_Red") || collision.collider.CompareTag("Platform_Green") || collision.collider.CompareTag("Platform_Blue"))
        {
            colorCollision = true;
            Debug.Log("Touching platform");
        }
        if (collision.collider.CompareTag("Enemy_Red") || collision.collider.CompareTag("Enemy_Blue") || collision.collider.CompareTag("Enemy_Green"))
        {


        }
    }

    private void OnCollisionStay(Collision collision)
    {
        if (collision.collider.CompareTag("Enemy_Red") || collision.collider.CompareTag("Enemy_Blue") || collision.collider.CompareTag("Enemy_Green"))
        {


        }
        isGrounded = true;
    }
    private void OnCollisionExit(Collision collision)
    {
        colorCollision = false;
        isGrounded = false;
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Platform_Red") || other.CompareTag("Platform_Green") || other.CompareTag("Platform_Blue"))
        {
            colorCollision = true;
        }
        else if (other.CompareTag("LevelEnd"))
        {
            Invoke("ResetWin", .5f);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        colorCollision = false;

    }

}
