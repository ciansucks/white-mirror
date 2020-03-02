using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AlterText : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        this.GetComponentInChildren<Text>().text = "Beep";

    }

    // Update is called once per frame
    void Update()
    {
    }

   public void UpdateText(TextAsset file)
    {
        this.GetComponentInChildren<Text>().text = file.text;
    }
}
