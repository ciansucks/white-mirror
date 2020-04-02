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
    private Image colIcon, dataBG, dataIcon, readHelpBG;
    private Text colTxt, dataTxt, readHelpTxt;
    void Start()
    {
        colIcon = GuiCanvas.transform.Find("ColorSwitchImage").GetComponent<Image>();
        colTxt = colIcon.GetComponentInChildren<Text>();
        dataBG = GuiCanvas.transform.Find("TextLogBG").GetComponent<Image>();
        dataIcon = GuiCanvas.transform.Find("TextLogIcon").GetComponent<Image>();
        dataTxt = dataBG.GetComponentInChildren<Text>();
        readHelpBG = GuiCanvas.transform.Find("ReadIcon").GetComponent<Image>();
        readHelpTxt = readHelpBG.GetComponentInChildren<Text>();

        colIcon.enabled = true;
        colTxt.enabled = true;
        dataBG.enabled = false;
        dataIcon.enabled = false;
        dataTxt.enabled = false;
        readHelpBG.enabled = false;
        readHelpTxt.enabled = false;

        isReading = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (isReading && Input.GetButtonDown("Cancel"))
        {
            Debug.Log("Canceling input");
            player.SetActive(true);
            colIcon.enabled = true;
            colTxt.enabled = true;
            dataBG.enabled = false;
            dataIcon.enabled = false;
            dataTxt.enabled = false;
            isReading = false;
            readHelpBG.enabled = false;
            readHelpTxt.enabled = false;
        }
    }
    /// <summary>
    /// On a player entering, enable the read prompt.
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        readHelpTxt.text = "Press Z to Read";
        readHelpBG.enabled = true;
        readHelpTxt.enabled = true;
    }
    private void OnTriggerExit(Collider other)
    {
        readHelpTxt.text = "Press Z to Read";
        readHelpBG.enabled = false;
        readHelpTxt.enabled = false;
    }
    private void OnTriggerStay(Collider other)
    {

        if (Input.GetButtonDown("Read") && !isReading)
        {
            colIcon.enabled = false;
            colTxt.enabled = false;
            //show GUI bg and update text depending on what text log you're pulling up
            dataBG.enabled = true;
            dataIcon.enabled = true;
            dataTxt.enabled = true;
            dataTxt.enabled = true;
            dataTxt.text = file.text;
            readHelpTxt.text = "Press X to Exit";

            player.SetActive(false); //disable player and movement until Cancel is hit
            isReading = true;
        }


    }

}
