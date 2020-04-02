using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TutorialText : MonoBehaviour
{
    public TextAsset file;
    public Canvas canvas;
    private Image tutorialBG;
    private Text tutorialTxt;
    // Start is called before the first frame update
    void Start()
    {
        tutorialBG = canvas.transform.Find("TutorialPanel").GetComponent<Image>();
        tutorialTxt = tutorialBG.GetComponentInChildren<Text>();
        tutorialTxt.enabled = false;
        tutorialBG.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
            tutorialTxt.text = file.text;
            tutorialTxt.enabled = true;
            tutorialBG.enabled = true;

    }
    private void OnTriggerExit(Collider other)
    {
            tutorialTxt.enabled = false;
            tutorialBG.enabled = false;

    }
}
