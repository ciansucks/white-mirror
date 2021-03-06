﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSoundManager : MonoBehaviour
{
    [SerializeField]
    private static AudioClip reflectSound, phaseSoundBlue, phaseSoundRed, phaseDeniedSound, logOpenSound, logCloseSound;

    [SerializeField]
    private static AudioClip[] reflectionClips;


    private static AudioSource playerAudioSource;
    // Start is called before the first frame update
    void Start()
    {
        // jumpSound = Resources.Load<AudioClip>;
        reflectSound = Resources.Load<AudioClip>("_Audio/Player Sounds/phase_shift_sound");
        phaseSoundBlue = Resources.Load<AudioClip>("_Audio/Player Sounds/dimension_shift1");
        phaseSoundRed = Resources.Load<AudioClip>("_Audio/Player Sounds/dimension_shiftUP");
        phaseDeniedSound = Resources.Load<AudioClip>("_Audio/Player Sounds/denied_beep");
        logOpenSound = Resources.Load<AudioClip>("_Audio/Beeps and Machines/bip");
        logCloseSound = Resources.Load<AudioClip>("_Audio/Beeps and Machines/bip_bass");


        playerAudioSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public static void PlaySound (string clip)
    {
        switch (clip)
        {
            
            case "reflect":
                playerAudioSource.PlayOneShot(reflectSound);
                break;            
            case "phase_blue":
                playerAudioSource.PlayOneShot(phaseSoundBlue);
                break;
            case "phase_red":
                playerAudioSource.PlayOneShot(phaseSoundRed);
                break;
            case "phase_denied":
                playerAudioSource.PlayOneShot(phaseDeniedSound);
                break;
            case "open_log":
                playerAudioSource.PlayOneShot(logOpenSound);
                break;
            case "close_log":
                playerAudioSource.PlayOneShot(logCloseSound);
                break;



        }
    }
    
    private static void reflect()
    {
        AudioClip clip = GetRandomReflectionClip();
        playerAudioSource.PlayOneShot(clip);
    }
    
    

    private static AudioClip GetRandomReflectionClip()
    {
        return reflectionClips[UnityEngine.Random.Range(0, reflectionClips.Length)];
    }
}
