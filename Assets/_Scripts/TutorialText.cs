using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class TutorialText : MonoBehaviour
{
    public GameObject player;
    private static GUIManager gCanvas;
    private string readTag = "ReadHelpText";
    public TextAsset file;
    public Canvas canvas;
    private bool isDataLog, isReading;
    // Start is called before the first frame update
    void Start()
    {
        
        isDataLog = this.tag == "DataLogText";
        isReading = false;
        gCanvas = canvas.GetComponent<GUIManager>();
        gCanvas.setText(this.tag, "");
    }
    private void Update()
    {
        if (isDataLog && isReading && Input.GetButtonDown("Cancel"))
        {
            player.SetActive(true);
            isReading = false;
            gCanvas.setText(readTag, "Press Z to Read");
            gCanvas.setText(this.tag, "");
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        //TO DO: Set Z to Controller Input
        if (isDataLog)
            gCanvas.setText(readTag, "Press Z to Read");
        else
            gCanvas.setText(this.tag, file.text);
    }
    private void OnTriggerExit(Collider other)
    {
        if (isDataLog)
            gCanvas.setText(readTag, "");
        gCanvas.setText(this.tag, "");
    }
    private void OnTriggerStay(Collider other)
    {
        if (isDataLog && !isReading && Input.GetButtonDown("Read"))
        {
            player.SetActive(false);

            isReading = true;
            gCanvas.setText(readTag, "Press X to Exit");
            gCanvas.setText(this.tag, file.text);
        }
    }
}
