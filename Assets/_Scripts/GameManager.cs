using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public bool isLastScene;

    //public GameObject deathPanel;

    public bool allLogsRead = false;

    public GameObject defaultTransition;
    public Animator transition;

    public GameObject whiteTransition;
    public Animator transitionWhite;



    public float transitionTime = 1.0f;

    private bool pauseGame = false;
    // Start is called before the first frame update
    void Start()
    {
        //deathPanel.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void gameOver()
    {
        Debug.Log("GameOver");
        toggleTime();
       // deathPanel.SetActive(true);

    }

    public void showButtonPrompt(string promptType)
    {
        Debug.Log("ShowButtonPrompt");

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

    //current transition types: fadeToBlack, fadeToWhite
    public void loadNextScene(string transitionType)
    {
        Debug.Log("Transition type: " + transitionType);

        if (transitionType == "fadeToBlack")
        {
            transition.enabled = true;
            transitionWhite.enabled = false;
        }
        if (transitionType == "fadeToWhite")
        {
            transition.enabled = false;
            transitionWhite.enabled = true;
        }

        if (isLastScene)
        {
            StartCoroutine(LoadLevel(0, transitionType));
            GlobalManager.creditsLoad = true;
        }
        else
        {
            StartCoroutine(LoadLevel(SceneManager.GetActiveScene().buildIndex + 1, transitionType));

        }
    }

    IEnumerator LoadLevel(int levelIndex, string transitionType)
    {
        if(transitionType == "fadeToBlack")
        {
            transition.SetTrigger("Start");
        }
        else if(transitionType == "fadeToWhite")
        {
            
            transitionWhite.SetTrigger("Start");
        }

        yield return new WaitForSeconds(transitionTime);
        
        SceneManager.LoadScene(levelIndex);
    }

    
}
