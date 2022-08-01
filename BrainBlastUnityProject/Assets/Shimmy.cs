using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shimmy : MonoBehaviour
{
    public float max;
    public float min;
    public float range = 10;
    private bool increasing = true;

    void Start()
    {
        max = transform.position.x + range;
        min = transform.position.x - range;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (increasing)
        {
            if (transform.position.x < max)
            {
                transform.position = new Vector3(transform.position.x + 0.1f, transform.position.y, transform.position.z);
            }
            else
            {
                increasing = false;
            }
        }
        else
        {
            if (transform.position.x > min)
            {
                transform.position = new Vector3(transform.position.x - 0.1f, transform.position.y, transform.position.z);
            }
            else
            {
                increasing = true;
            }
        }
        
    }
}
