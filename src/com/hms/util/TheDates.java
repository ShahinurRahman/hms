package com.hms.util;

/**
 * @author ZiBRAIL
 *
 * This is an Utility class for getting different type of date and calculate
 * date's difference, convert date etc. Don't delete without getting backup
 */
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TheDates {

    public static void main(String[] args) {
        TheDates td = new TheDates();
        System.out.println("---------------AGE Calculation---------------");
        System.out.println("getAgeInYear('1985-05-01') = " + td.getAgeInYear("1985-05-01"));
        System.out.println("getAge('1985-05-01') = " + td.getAge("1985-05-01"));
        System.out.println("---------------Other Methods---------------");
        System.out.println("countDayBtn2Date('2014-12-23', '2014-02-26') = " + td.countDayBtn2Date("2014-12-23", "2014-02-26"));
        System.out.println("getFirstDayOfMonth() = " + td.getFirstDayOfMonth());
        System.out.println("getLastDayOfMonth() = " + td.getLastDayOfMonth());
        System.out.println("getToday() = " + td.getToday());
        System.out.println("getToday() = " + td.getTodaySmart());
        System.out.println("getDateOfTheDay(5) = " + td.getDateOfTheDay(5));
        System.out.println("getDateAfterDay(556) = " + td.getDateAfterDay(29));
        System.out.println("To Date () : " + td.toDate("2014-2-04"));
    }

    public Date toDate(String rawDate) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateInString = rawDate;
        Date date = null;
        try {
            date = formatter.parse(dateInString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    //Getting difference in "2 Year 3 Month 12 Days" format between two string date
    //Parameter-String format 'yyyy-mm-dd'
    public String countDayBtn2Date(String newDate, String oldDate) {
        String difference = "";
        String[] now = newDate.split("-");
        String[] before = oldDate.split("-");
        int years = 0, months = 0, days = 0;
        try {
            years = Integer.parseInt(now[0]) - Integer.parseInt(before[0]);
            months = Integer.parseInt(now[1]) - Integer.parseInt(before[1]);
            days = Integer.parseInt(now[2]) - Integer.parseInt(before[2]);
        } catch (NumberFormatException e) {
            // TODO: handle exception
            years = 0;
            months = 0;
            days = 0;
        }

        if (days < 0) {
            days += 30;
            months -= 1;
            if (months < 0) {
                months += 12;
                years -= 1;
            }
        }
        if (months < 0) {
            months += 12;
            years -= 1;
        }
        if (years < 0 || (days == 0 && months == 0 && years == 0)) {
            difference = "There is problem in inserting date/no date found";
        } else {
            String day = days + " Day ", month = months + " Month ", year = years + " Year ";
            if (days == 0) {
                day = "";
            }
            if (months == 0) {
                month = "";
            }
            if (years == 0) {
                year = "";
            }
            difference = year + month + day;
        }
        return difference;
    }

    //Getting age in "2 Year 3 Month 12 Days" format from string birth date
    //Parameter-String format 'yyyy-mm-dd'
    public String getAge(String birth) {
        String difference = "";
        String[] now = getToday().split("-");
        String[] birthDate = birth.split("-");
        int years = Integer.parseInt(now[0]) - Integer.parseInt(birthDate[0]);
        int months = Integer.parseInt(now[1]) - Integer.parseInt(birthDate[1]);
        int days = Integer.parseInt(now[2]) - Integer.parseInt(birthDate[2]);

        if (days < 0) {
            days += 30;
            months -= 1;
            if (months < 0) {
                months += 12;
                years -= 1;
            }
        }
        if (months < 0) {
            months += 12;
            years -= 1;
        }
        if (years < 0) {
            difference = "There is problem in inserting date";
        } else {
            String day = days + " Day ", month = months + " Month ", year = years + " Year ";
            if (days == 0) {
                day = "";
            }
            if (months == 0) {
                month = "";
            }
            if (years == 0) {
                year = "";
            }
            difference = year + month + day;
        }
        return difference;
    }

    //Getting age in YEAR
    //Parameter-String format 'yyyy-mm-dd'
    public String getAgeInYear(String birth) {
        String age = "";
        String[] now = getToday().split("-");
        String[] birthDate = birth.split("-");
        int years = Integer.parseInt(now[0]) - Integer.parseInt(birthDate[0]);
        int months = Integer.parseInt(now[1]) - Integer.parseInt(birthDate[1]);
        int days = Integer.parseInt(now[2]) - Integer.parseInt(birthDate[2]);

        if (days < 0) {
            days += 30;
            months -= 1;
            if (months < 0) {
                months += 12;
                years -= 1;
            }
        }
        if (months < 0) {
            months += 12;
            years -= 1;
        }
        if (years < 0) {
            age = "This guy yet not born !";
        } else {
            age = years + "";
        }
        return age;
    }

    public String getDateAfterDay(int day) {
        String date = "";
        String today = getToday();
        String lastDay = getLastDayOfMonth();
        int toDate = Integer.parseInt(today.substring(8, 10));
        int lastDate = Integer.parseInt(lastDay.substring(8, 10));
        int thisMonth = Integer.parseInt(today.substring(5, 7));
        int thisYear = Integer.parseInt(today.substring(0, 4));
        if ((toDate + day) <= lastDate) {
            date = thisYear + "-" + thisMonth + "-" + (toDate + day);
        } else if ((toDate + day) > lastDate) {
            if ((thisMonth + 1) > 12) {
                date = (thisYear + 1) + "-01-" + (toDate + day - lastDate);
            } else if ((thisMonth + 1) <= 12) {
                date = thisYear + "-" + (thisMonth + 1) + "-" + (toDate + day - lastDate);
            }
        }

        return date;
    }

    public String getDateAfterDay(String dateA, int day) {
        String date = "";
        String today = dateA;
        String lastDay = getLastDayOfMonth();
        int toDate = Integer.parseInt(today.substring(8, 10));
        int lastDate = Integer.parseInt(lastDay.substring(8, 10));
        int thisMonth = Integer.parseInt(today.substring(5, 7));
        int thisYear = Integer.parseInt(today.substring(0, 4));
        if ((toDate + day) <= lastDate) {
            date = thisYear + "-" + thisMonth + "-" + (toDate + day);
        } else if ((toDate + day) > lastDate) {
            if ((thisMonth + 1) > 12) {
                date = (thisYear + 1) + "-01-" + (toDate + day - lastDate);
            } else if ((thisMonth + 1) <= 12) {
                date = thisYear + "-" + (thisMonth + 1) + "-" + (toDate + day - lastDate);
            }
        }

        return date;
    }

    public String getToday() {
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);

        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(today);
    }

    public String getTodaySmart() {
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);

        DateFormat sdf = new SimpleDateFormat("MMMM dd, yyyy");
        return sdf.format(today);
    }

    //You have to call firstDay(4); to get 4th day date of current month etc.
    public String getDateOfTheDay(int d) {
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);

        calendar.add(Calendar.MONTH, 0);
        calendar.set(Calendar.DAY_OF_MONTH, 1 + d);  //2
        calendar.add(Calendar.DATE, -1);

        Date firstDay = calendar.getTime();

        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return (sdf.format(firstDay));
    }

    public String getFirstDayOfMonth() {
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);

        calendar.add(Calendar.MONTH, 0);
        calendar.set(Calendar.DAY_OF_MONTH, 2);  //2
        calendar.add(Calendar.DATE, -1);

        Date firstDay = calendar.getTime();

        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return (sdf.format(firstDay));
    }

    public String getLastDayOfMonth() {
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);

        calendar.add(Calendar.MONTH, 1);
        calendar.set(Calendar.DAY_OF_MONTH, 1);  //1
        calendar.add(Calendar.DATE, -1);

        Date firstDay = calendar.getTime();

        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return (sdf.format(firstDay));
    }

}
