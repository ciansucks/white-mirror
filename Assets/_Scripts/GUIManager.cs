using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using System;
using System.IO;
using UnityEngine.SceneManagement;

/// <summary>
/// Attaches onto the PlayerCanvas - use to manage all the GUI items on the canvas
/// </summary>
public class GUIManager : MonoBehaviour
{
    private bool hasTutorialUp, hasPauseUp;
    private Image colIcon, dataBG, dataIcon, readHelpBG;
    private Image iVina, iCarol, iPablo, iQuack;
    private Transform scrollbar;
    private Text colTxt, dataTxt, readHelpTxt;
    private Image tutorialBG;
    public GameObject scrollContents;
    private Text tutorialTxt;
    private Transform dataPanel, readPanel, tutorialPanel, pausePanel;
    private Image scrollHandle;
    private int num;


    public GameManager manager;

    // Start is called before the first frame update
    void Start()
    {
        hasPauseUp = false;
        hasTutorialUp = false;

        dataPanel = this.transform.Find("DataLogPanel");
        dataBG = dataPanel.Find("TextLogBG").GetComponent<Image>();
        scrollbar = dataPanel.Find("TextLogBG").Find("Scrollbar Vertical");
        scrollHandle = scrollbar.Find("Sliding Area").GetComponentInChildren<Image>();
        dataTxt = scrollContents.GetComponent<Text>();

        readPanel = this.transform.Find("ReadIcon");
        readHelpBG = readPanel.GetComponent<Image>();
        readHelpTxt = readHelpBG.GetComponentInChildren<Text>();

        tutorialPanel = this.transform.Find("TutorialPanel");
        tutorialBG = tutorialPanel.GetComponent<Image>();
        tutorialTxt = tutorialPanel.GetComponentInChildren<Text>();
        tutorialTxt.enabled = true;

        pausePanel = this.transform.Find("PauseMenuPanel");

        iVina = dataPanel.Find("TextLogIconVina").GetComponent<Image>();
        iCarol = dataPanel.Find("TextLogIconCarol").GetComponent<Image>();
        iPablo = dataPanel.Find("TextLogIconPablo").GetComponent<Image>();
        iQuack = dataPanel.Find("TextLogIconQuack").GetComponent<Image>();
        dataIcon = iVina;

        tutorialTxt.text = "";
        tutorialBG.enabled = false;
        pausePanel.gameObject.SetActive(false);
        // SetTutorialText("");
        SetDatalogText("", "");
        SetReadHelpText("");
        num = 0;
    }
    private void Update()
    {
        if (!hasPauseUp && Input.GetButtonDown("Pause"))
        {
            Debug.Log("Pause");
            dataPanel.gameObject.SetActive(false);
            readPanel.gameObject.SetActive(false);
            tutorialPanel.gameObject.SetActive(false);

            pausePanel.gameObject.SetActive(true);
            hasPauseUp = true;

            manager.toggleTime();
        }
        else if (hasPauseUp && Input.GetButtonDown("Pause"))
        {
            Debug.Log("Unpause");
            dataPanel.gameObject.SetActive(true);
            readPanel.gameObject.SetActive(true);
            tutorialPanel.gameObject.SetActive(true);

            pausePanel.gameObject.SetActive(false);
            hasPauseUp = false;

            manager.toggleTime();

        }
    }
    public void SetDatalogText(String input)
    {
        if (input == "")
        {
            dataPanel.gameObject.SetActive(false);
            scrollbar.gameObject.SetActive(false);
            dataTxt.enabled = false;
            dataBG.enabled = false;
            dataIcon.enabled = false;
            iVina.enabled = false;
            iCarol.enabled = false;
            iPablo.enabled = false;
            iQuack.enabled = false;
            scrollHandle.enabled = false;

            if (hasTutorialUp)
            {
                tutorialTxt.enabled = true;
                tutorialBG.enabled = true;
            }
        }
        else
        {
            dataPanel.gameObject.SetActive(true);
            dataTxt.text = input;
            dataTxt.enabled = true;
            dataBG.enabled = true;
            dataIcon.enabled = true;
            scrollHandle.enabled = true;

            scrollbar.gameObject.SetActive(true);
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
            scrollHandle.enabled = false;

            scrollbar.gameObject.SetActive(false);
            if (hasTutorialUp)
            {
                tutorialTxt.enabled = true;
                tutorialBG.enabled = true;
            }
        }
        else
        {
            if (character != "None")
            {
                dataIcon = dataPanel.Find("TextLogIcon" + character).GetComponent<Image>();
                dataIcon.enabled = true;

            }
            else
            {
                dataIcon.enabled = false;
            }
            dataPanel.gameObject.SetActive(true);
            dataTxt.text = input;
            dataTxt.enabled = true;
            dataBG.enabled = true;
            scrollHandle.enabled = true;

            scrollbar.gameObject.SetActive(true);
            if (hasTutorialUp)
            {
                tutorialBG.enabled = false;
                tutorialTxt.enabled = false;
            }
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
        //  Debug.Log("Tutorial Text is: " + input);
        if (input == "")
        {
            num--;

            if (num == 0)
            {
                tutorialTxt.text = "";
                tutorialBG.enabled = false;
                hasTutorialUp = false;
            }

        }
        else
        {
            //overlapping tut text
            if (tutorialTxt.enabled == true)
            {
            }
            tutorialTxt.text = input;
            tutorialTxt.enabled = true;
            tutorialBG.enabled = true;
            hasTutorialUp = true;
            num++;
        }
        Debug.Log("Num is now " + num);

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

    public void ResumeButton()
    {
        hasPauseUp = false;
        dataPanel.gameObject.SetActive(true);
        readPanel.gameObject.SetActive(true);
        tutorialPanel.gameObject.SetActive(true);

        pausePanel.gameObject.SetActive(false);

        manager.toggleTime();
    }

    public void ExitButton()
    {
        manager.toggleTime();
        SceneManager.LoadScene(0);

    }
}

