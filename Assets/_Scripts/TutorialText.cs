using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class TutorialText : MonoBehaviour
{
    private static GUIManager gCanvas;
    public TextAsset file;
    public Canvas canvas;
  
    // Start is called before the first frame update
    void Start()
    {
        gCanvas = canvas.GetComponent<GUIManager>();
        gCanvas.setText(this.tag,"");
    }

    private void OnTriggerEnter(Collider other)
    {
        gCanvas.setText(this.tag,file.text);
    }
    private void OnTriggerExit(Collider other)
    {
        gCanvas.setText(this.tag, "");
    }
}
