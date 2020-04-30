using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class TutorialText : MonoBehaviour
{
    private float speed;
    private GameObject player;
    public enum Character
    {
        Carol, Vina, Pablo, Quack
    }
    private static GUIManager gCanvas;
    private string readTag = "ReadHelpText";
    public TextAsset file;
    public Canvas canvas;
    public Character icon;
    private bool isDataLog, isReading, readPressed;
    private bool inRange;
    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.Find("Player");
        speed = player.GetComponent<PlayerInput>().speed;
        isDataLog = this.tag == "DataLogText";
        isReading = false;
        readPressed = false;
        gCanvas = canvas.GetComponent<GUIManager>();
        //gCanvas.setText(this.tag, "");
    }
    private void Update()
    {
        if (isDataLog && isReading && Input.GetButtonUp("Cancel"))
        {
            player.GetComponentInChildren<Animator>().enabled = true;
            player.GetComponent<PlayerInput>().enabled = true;
            //           player.SetActive(true);
            isReading = false;
            gCanvas.setText(readTag, "Press E to Read");
            gCanvas.setText(this.tag, "");

            PlayerSoundManager.PlaySound("close_log");
        }
        if (inRange && Input.GetButtonUp("ButtonPush"))
            readPressed = true;
    }
    private void OnTriggerEnter(Collider other)
    {

        //TO DO: Set Z to Controller Input
        if (isDataLog)
        {
            gCanvas.setText(readTag, "Press E to Read");
            inRange = true;
        }
        else
            gCanvas.setText(this.tag, file.text);
    }
    private void OnTriggerExit(Collider other)
    {
        if (isDataLog)
        {
            gCanvas.setText(readTag, "");
            inRange = false;
        }
        else
            gCanvas.setText(this.tag, "");
    }
    private void OnTriggerStay(Collider other)
    {

        if (isDataLog && !isReading && readPressed)
        {
            player.GetComponentInChildren<Animator>().enabled = false;
            player.GetComponent<PlayerInput>().enabled = false;


            // player.SetActive(false);

            isReading = true;
            gCanvas.setText(readTag, "Press R to Exit");
            gCanvas.setText(this.tag, file.text, icon.ToString());

            PlayerSoundManager.PlaySound("open_log");
            readPressed = false;
        }
    }
}
