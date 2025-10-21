package com.miempresa;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;


public class AppTest 
{
   @Test 
    public void testSumar() {
        App app = new App();
        assertEquals(5, app.sumar((2), 3));
    }
}
