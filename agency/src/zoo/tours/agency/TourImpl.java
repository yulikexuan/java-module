package zoo.tours.agency;

import zoo.tours.api.*;

public class TourImpl implements Tour {

    @Override
    public String name() {
        return "Behind the Scenes";
    }

    @Override
    public int length() {
        return 120;
    }

    @Override
    public Souvenir souvenir() {
        return new Souvenir("Stuffed Animal");    
    }

}
