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
    private Image iVina, iCarol, iPablo, iQuack;

    private Text colTxt, dataTxt, readHelpTxt;
    private Image tutorialBG;
    public GameObject scrollContents;
    private Text tutorialTxt;
    private Transform dataPanel;


    // Start is called before the first frame update
    void Start()
    {
       

        colIcon = this.transform.Find("ColorSwitchImage").GetComponent<Image>();
        colTxt = colIcon.GetComponentInChildren<Text>();

        dataPanel = this.transform.Find("DataLogPanel");
        dataBG = dataPanel.Find("TextLogBG").GetComponent<Image>();
        // dataTxt = dataBG.GetComponentInChildren<Text>();
        dataTxt = scrollContents.GetComponent<Text>();
        readHelpBG = this.transform.Find("ReadIcon").GetComponent<Image>();
        readHelpTxt = readHelpBG.GetComponentInChildren<Text>();

        tutorialBG = this.transform.Find("TutorialPanel").GetComponent<Image>();
        tutorialTxt = tutorialBG.GetComponentInChildren<Text>();

        iVina = dataPanel.Find("TextLogIconVina").GetComponent<Image>();
        iCarol = dataPanel.Find("TextLogIconCarol").GetComponent<Image>();
        iPablo = dataPanel.Find("TextLogIconPablo").GetComponent<Image>();
        iQuack = dataPanel.Find("TextLogIconQuack").GetComponent<Image>();
        dataIcon =iVina;

        EnableColorSwap(false);
        SetTutorialText("");
        SetDatalogText("", "");
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
            dataPanel.gameObject.SetActive(false);
            dataTxt.enabled = false;
            dataBG.enabled = false;
            dataIcon.enabled = false;
            iVina.enabled = false;
            iCarol.enabled = false;
            iPablo.enabled = false;
            iQuack.enabled = false;
        }
        else
        {
            dataPanel.gameObject.SetActive(true);
            dataTxt.text = input;
            dataTxt.enabled = true;
            dataBG.enabled = true;
            dataIcon.enabled = true;

        }
    }
    public void SetDatalogText(String input, String character)
    {
        if (input == "")
        {
            dataPanel.gameObject.SetActive(false);
            dataTxt.enabled = false;
            dataBG.enabled = false;
            dataIcon.enabled = false;
            iVina.enabled = false;
            iCarol.enabled = false;
            iPablo.enabled = false;
            iQuack.enabled = false;
        }
        else
        {
            dataIcon = dataPanel.Find("TextLogIcon"+character).GetComponent<Image>();
            dataPanel.gameObject.SetActive(true);
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
                SetDatalogText(input);
                break;
            case "ReadHelpText":
                SetReadHelpText(input);
                break;
            default:
                break;
        }


    }
    public void setText(String tag, String input, String character)
    {
        switch (tag)
        {

            case "DataLogText":
                //TO DO: Change so datalog is enabled when ReadButton is used
                SetDatalogText(input, character);
                break;
            default:
                break;
        }


    }
}
