package zoo.visitor;

import java.util.*;

import zoo.tours.api.*;
import zoo.tours.reservations.*;

public class Tourist {
    public static void main(String... args) {
        Tour tour = TourFinder.findAny();
        System.out.println(">>> Single Tour: %s".formatted(tour));

        List<Tour> tours = TourFinder.findAll();
        System.out.println(">>> Number of Tours: %d".formatted(tours.size()));
    }
}
