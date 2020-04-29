using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public GameObject Main, Credits;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void PlayGame()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }

    public void QuitGame()
    {
        Debug.Log("Quit");
        Application.Quit();
    }

    public void ReturnToMenu()
    {
        Main.SetActive(true);
        Credits.SetActive(false);
     //   SceneManager.LoadScene(0);
    }

    public void LoadCredits()
    {
        Main.SetActive(false);
        Credits.SetActive(true);
        //SceneManager.LoadScene(6);
    }
}
