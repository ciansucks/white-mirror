using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class ShowText : MonoBehaviour
{
    public TextAsset file;
    public GameObject player;
    public Canvas GuiCanvas, PlayerCanvas;
    private bool isReading;
    // Start is called before the first frame update
    void Start()
    {
        GuiCanvas.enabled = false;

        isReading = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (isReading && Input.GetButtonDown("Cancel"))
        {
            Debug.Log("Canceling input");
            player.SetActive(true);
            GuiCanvas.enabled = false;
            PlayerCanvas.enabled = true;
            isReading = false;
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (Input.GetButtonDown("Read") && !isReading)
        {
            //show GUI bg and update text depending on what text log you're pulling up
            GuiCanvas.enabled = true;
            PlayerCanvas.enabled = false;
            GuiCanvas.GetComponentInChildren<Text>().text = file.text;
            player.SetActive(false); //disable player and movement until Cancel is hit
            isReading = true;
        }


    }

}
