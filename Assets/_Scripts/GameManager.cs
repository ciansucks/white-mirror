using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public bool isLastScene;

    public GameObject deathPanel;

    public GameObject buttonPromptPanel;

    private bool pauseGame = false;
    // Start is called before the first frame update
    void Start()
    {
        deathPanel.SetActive(false);
        buttonPromptPanel.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void gameOver()
    {
        Debug.Log("GameOver");
        toggleTime();
        deathPanel.SetActive(true);

    }

    public void showButtonPrompt(string promptType)
    {
        Debug.Log("ShowButtonPrompt");

        buttonPromptPanel.SetActive(true);
    }

    private void toggleTime()
    {
        pauseGame = !pauseGame;
        if (pauseGame)
        {
            Time.timeScale = 0;
        }
        else
        {
            Time.timeScale = 1;
        }
    }

    public void retry()
    {
        Debug.Log("Retry");

        toggleTime();
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    public void loadNextScene()
    {
        if (SceneManager.GetActiveScene().buildIndex == 3)
        {
            SceneManager.LoadScene(0);
        }
        else
        {

            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }

    
}
