using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseTargetV3D : MonoBehaviour {

    public Transform targetTransform;
    public float speed = 1f;

    private Vector3 mouseWorldPosition;

    void Start() {
        // set target transform from a gameobject called "Target" in the scene
        targetTransform = GameObject.Find("Target").transform;
    }
    
    // Positioning cursor prefab
    void Update () {  

        mouseWorldPosition = targetTransform.position;

        Quaternion toRotation = Quaternion.LookRotation(mouseWorldPosition - transform.position);
        transform.rotation = toRotation;

    }
}
