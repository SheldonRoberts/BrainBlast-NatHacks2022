using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Normal.Realtime;


public class MyPlayer : MonoBehaviour
{
    public GameObject RightController;
    public GameObject laserPrefab;
    public GameObject laser;
    public RealtimeTransform avatar;
    private bool completed = false;
    public int myID;
    // Start is called before the first frame update
    void Start()
    {
        // instantiate a laser prefab with the right controller as parent
        
        // call initial() in 2 seconds
        Invoke("initial", 2f);
       
        
    }

    // Update is called once per frame
    void Update()
    {
        if (!completed) {
            try {
                laser.GetComponent<RealtimeTransform>().RequestOwnership();
                completed = true;
            } catch {

            }
        }
    }

    void initial() {
        myID = avatar.ownerIDSelf;
        // get the child of laser called "V3DLaser_01"
        if (myID == 0) {
            laser = Realtime.Instantiate("LaserHand");
            laser.transform.parent = RightController.transform;
        } else {
            laser = Realtime.Instantiate("RedLaserHand");
            laser.transform.parent = RightController.transform;
        }
        GameObject laserV3D = laser.transform.Find("V3DLaser_01").gameObject;
        // get the child of laserV3D called "Effect"
        GameObject laserEffect = laserV3D.transform.Find("Effect").gameObject;
        laserEffect.GetComponent<ProgressControlV3D>().laserHand = RightController.transform;
    }
}
