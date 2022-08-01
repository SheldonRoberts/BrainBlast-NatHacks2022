using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Normal.Realtime;

public class HandColor : MonoBehaviour
{
    
    public Material blue_hand;
    public Material red_hand;
    public RealtimeTransform avatar;
    public int myID;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        myID = avatar.ownerIDSelf;
        // check the owner of avatar
        if (avatar.ownerIDSelf == 0)
        {
            // set the material to blue
            GetComponent<Renderer>().material = blue_hand;
        }
        else
        {
            // set the material to red
            GetComponent<Renderer>().material = red_hand;
        }
    }
}
