using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class MainMenu : MonoBehaviour
{
    public GameObject Main, Credits,mainButtons,credButton;
    // Start is called before the first frame update
    void Start()
    {
        ReturnToMenu();

        if (GlobalManager.creditsLoad)
        {
            LoadCredits();
        }
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
        mainButtons.SetActive(true);

        Credits.SetActive(false);
        credButton.SetActive(false);

        //   SceneManager.LoadScene(0);
    }

    public void LoadCredits()
    {
        Main.SetActive(false);
        mainButtons.SetActive(false);
        Credits.SetActive(true);
        credButton.SetActive(true);
        //SceneManager.LoadScene(6);
    }
}
