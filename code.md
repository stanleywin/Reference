##

````c#
protected void Button1_Click(object sender, EventArgs e)
    {
        int[] n = new int[5];
        string s = "";
        for(int i = 1; i <= 5; i++)
        {
            n[i - 1] = i;
            s = s + n[i - 1].ToString() + " ";
        }
        Label1.Text =s;
    } 


protected void Button1_Click(object sender, EventArgs e)
    {
        int[] n = new int[5];
        var s = "";
        for(int r in n)
        { 
            s = s + r.ToString() + " ";
        }
        Label1.Text = s;
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string r = "";
        List<int> mArray = new List<int>(); //List is a data structure (template) 
        mArray.Add(5);
        mArray.Add(10);
        mArray.Add(3);
        Label1.Text = mArray.Count.ToString();
        mArray.Sort(); // sort by the num sequence
        foreach (int num in mArray)
            r += num.ToString() + " ";
        Label2.Text = r;
    }

 protected void Button1_Click(object sender, EventArgs e)
    {
        string r = "";
        List<string> mArray = new List<string>();
        mArray.Add("banana");
        mArray.Add("apple");
        mArray.Add("cat");
        Label1.Text = mArray.Count.ToString();
        mArray.Sort(); //sort by a-z
        foreach (string num in mArray)
            r += "" + num.ToString() + " ";
        Label2.Text = r;
    }
    ````
