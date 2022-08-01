using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.XR.Interaction.Toolkit;
public class SFXControllerV3D : MonoBehaviour
{

    public AudioSource loopingSFX;
    public GameObject[] waveSfxPrefabs;
    public XRController rightHand;
    public InputHelpers.Button button;
    bool wasPressed = false;

    private float globalProgress;

    public void SetGlobalProgress(float gp)
    {
        globalProgress = gp;
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            Instantiate(waveSfxPrefabs[Random.Range(0, waveSfxPrefabs.Length)], transform.position, transform.rotation);
        }

        bool pressed;
        rightHand.inputDevice.IsPressed(button, out pressed);

        if (pressed && !wasPressed)
        {
            Instantiate(waveSfxPrefabs[Random.Range(0, waveSfxPrefabs.Length)], transform.position, transform.rotation);
            wasPressed = true;
        } else if (!pressed && wasPressed)
        {
            wasPressed = false;
        }


        loopingSFX.volume = globalProgress;
    }
}
