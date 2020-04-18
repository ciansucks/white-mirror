using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JumpingAudio : MonoBehaviour
{
    [SerializeField]
    private AudioClip[] jumpClips;

    [SerializeField]
    private AudioClip[] landingClips;

    private AudioSource audioSource;

    private void Awake()
    {
        audioSource = GetComponent<AudioSource>();
    }

    private void Jumping()
    {
        AudioClip clip = GetRandomJumpingClip();
        audioSource.PlayOneShot(clip);
    }

    private void Landing()
    {
        AudioClip clip = GetRandomLandingClip();
        audioSource.PlayOneShot(clip);
    }

    private AudioClip GetRandomJumpingClip()
    {
        return jumpClips[UnityEngine.Random.Range(0, jumpClips.Length)];
    }

    private AudioClip GetRandomLandingClip()
    {
        return landingClips[UnityEngine.Random.Range(0, landingClips.Length)];
    }


    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
}

