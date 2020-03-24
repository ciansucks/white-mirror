using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class ShowText : MonoBehaviour
{
    public TextAsset file;
    public GameObject player;
    public Canvas GuiCanvas;
    private bool isReading;
    // Start is called before the first frame update
    void Start()
    {
        GuiCanvas.transform.Find("ColorSwitchImage").GetComponent<Image>().enabled = true;
        GuiCanvas.transform.Find("TextLogBG").GetComponent<Image>().enabled = false;
        GuiCanvas.transform.Find("TextLogIcon").GetComponent<Image>().enabled = false;
        GuiCanvas.transform.Find("TextLogText").GetComponent<Text>().enabled = false;
        isReading = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (isReading && Input.GetButtonDown("Cancel"))
        {
            Debug.Log("Canceling input");
            player.SetActive(true);
            GuiCanvas.transform.Find("ColorSwitchImage").GetComponent<Image>().enabled = true;
            GuiCanvas.transform.Find("TextLogBG").GetComponent<Image>().enabled = false;
            GuiCanvas.transform.Find("TextLogIcon").GetComponent<Image>().enabled = false;
            GuiCanvas.transform.Find("TextLogText").GetComponent<Text>().enabled = false;
            isReading = false;
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (Input.GetButtonDown("Read") && !isReading)
        {
            //show GUI bg and update text depending on what text log you're pulling up
            GuiCanvas.transform.Find("ColorSwitchImage").GetComponent<Image>().enabled = false;
            GuiCanvas.transform.Find("TextLogBG").GetComponent<Image>().enabled = true;
            Text textbox = GuiCanvas.transform.Find("TextLogText").GetComponent<Text>();
            textbox.enabled = true;
            textbox.text = file.text;

            GuiCanvas.transform.Find("TextLogIcon").GetComponent<Image>().enabled = true;
            player.SetActive(false); //disable player and movement until Cancel is hit
            isReading = true;
        }


    }

}
