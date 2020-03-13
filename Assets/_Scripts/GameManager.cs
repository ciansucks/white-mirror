﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{

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
        toggleTime();
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}