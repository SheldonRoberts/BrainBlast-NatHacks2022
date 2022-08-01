using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Normal.Realtime;


public class GiveOwnership : MonoBehaviour
{
    private RealtimeTransform realtimeTransform;
    public int myID;

    // Start is called before the first frame update
    void Start()
    {
        realtimeTransform = GetComponent<RealtimeTransform>();
        realtimeTransform.RequestOwnership();
        myID = realtimeTransform.ownerIDSelf;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
