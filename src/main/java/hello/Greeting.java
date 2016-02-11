package hello;

import java.io.Serializable;

/**
 * Created by Deus@ZJU on 16/2/10.
 */
public class Greeting implements Serializable {

    private final long id;
    private final String content;

    public Greeting(long id, String content) {
        this.id = id;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public String getContent() {
        return content;
    }
}

