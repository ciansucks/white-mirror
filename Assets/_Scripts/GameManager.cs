using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public bool isLastScene = false;

    public GameObject deathPanel;
    private bool pauseGame = false;
    // Start is called before the first frame update
    void Start()
    {
        deathPanel.SetActive(false);
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
        if (isLastScene)
        {
            SceneManager.LoadScene(0);
        }
        else
        {

            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
