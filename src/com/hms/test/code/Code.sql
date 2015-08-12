       


       patients = session.createQuery("from Patient").list();

       Criteria criteria = session.createCriteria(TestEntry.class);
       TestEntry testEntry = (TestEntry) criteria.add(Restrictions.eq("testName", testName)).uniqueResult();