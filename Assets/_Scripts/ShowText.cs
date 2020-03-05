using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class ShowText : MonoBehaviour
{
    public TextAsset file;
    public Text content;
    public GameObject player;
    //public UnityEvent<TextAsset> changeText;
    public UnityEvent changeText;
    public UnityEvent resetText;
    public bool isReading;
    // Start is called before the first frame update
    void Start()
    {
        isReading = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (isReading && Input.GetButtonDown("Cancel"))
        {
            Debug.Log("Exiting file");
            player.SetActive(true);
            resetText.Invoke();

        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (Input.GetButtonDown("Read"))
        {
            Debug.Log("Reading file");
            //changeText.Invoke();
            content.text = file.text;
            //changeText.Invoke(file);
            player.SetActive(false);
            isReading = true;
        }
      
          
    }
    private void OnTriggerExit(Collider other)
    {
        resetText.Invoke();

    }
}
