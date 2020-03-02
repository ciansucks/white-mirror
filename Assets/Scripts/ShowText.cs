using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ShowText : MonoBehaviour
{
    public TextAsset file;
    //public UnityEvent<TextAsset> changeText;
    public UnityEvent changeText;
    public UnityEvent resetText;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerStay(Collider other)
    {
        if (Input.GetButtonDown("Read"))
        {
            Debug.Log("Reading file");
            changeText.Invoke();
            //changeText.Invoke(file);
        }
          
    }
    private void OnTriggerExit(Collider other)
    {
        resetText.Invoke();

    }
}
