using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using System;
using System.IO;

/// <summary>
/// Attaches onto the PlayerCanvas - use to manage all the GUI items on the canvas
/// </summary>
public class GUIManager : MonoBehaviour
{

    private Image colIcon, dataBG, dataIcon, readHelpBG;
    private Text colTxt, dataTxt, readHelpTxt;
    private Image tutorialBG;
    private Text tutorialTxt;

    // Start is called before the first frame update
    void Start()
    {
        colIcon = this.transform.Find("ColorSwitchImage").GetComponent<Image>();
        colTxt = colIcon.GetComponentInChildren<Text>();

        dataBG = this.transform.Find("TextLogBG").GetComponent<Image>();
        dataIcon = this.transform.Find("TextLogIcon").GetComponent<Image>();
        dataTxt = dataBG.GetComponentInChildren<Text>();

        readHelpBG = this.transform.Find("ReadIcon").GetComponent<Image>();
        readHelpTxt = readHelpBG.GetComponentInChildren<Text>();

        tutorialBG = this.transform.Find("TutorialPanel").GetComponent<Image>();
        tutorialTxt = tutorialBG.GetComponentInChildren<Text>();

        EnableColorSwap(false);
        SetTutorialText("");
        SetDatalogText("");
        SetReadHelpText("");
    }

    public void EnableColorSwap(Boolean b)
    {
        colIcon.enabled = b;
        colTxt.enabled = b;
    }
    public void SetDatalogText(String input)
    {
        if (input == "")
        {
            dataTxt.enabled = false;
            dataBG.enabled = false;
            dataIcon.enabled = false;

        }
        else
        {
            dataTxt.text = input;
            dataTxt.enabled = true;
            dataBG.enabled = true;
            dataIcon.enabled = true;
        }
    }
    public void SetReadHelpText(String input)
    {
        if (input == "")
        {
            readHelpBG.enabled = false;
            readHelpTxt.enabled = false;
        }
        else
        {
            readHelpTxt.text = input;
            readHelpBG.enabled = true;
            readHelpTxt.enabled = true;
        }
       
    }

    public void SetTutorialText(String input)
    {
        if (input == "")
        {
            tutorialTxt.enabled = false;
            tutorialBG.enabled = false;
        }
        else
        {
            tutorialTxt.text = input;
            tutorialTxt.enabled = true;
            tutorialBG.enabled = true;
        }
    }
    public void setText(String tag, String input)
    {
        switch (tag)
        {
            case "TutorialText":
                SetTutorialText(input);
                break;
            case "DataLogText":
                //TO DO: Change so datalog is enabled when ReadButton is used
                SetReadHelpText(input);

               
                break;
            case "ReadHelpText":
                break;
            default:
                break;
        }


    }
}
