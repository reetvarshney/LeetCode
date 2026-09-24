class Solution {
    public boolean rotateString(String s, String goal) {
        boolean c = false;

        if (s.length() != goal.length()){
            return c;
            
        }

        String doublestring = s + s;
        
        if (doublestring.contains(goal)){
            c = true;
        }
        return c;

    }
    
}