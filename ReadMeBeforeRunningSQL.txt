/*******************************************************/
/			This Project was solely made				/
/				by Mark Anthony Prado					/	
/			as project assignment for Java 3			/
/			 under Prof. Jonathan Penava				/
/														/
/		c.2018 Dec 	https://github.com/otsukaranz		/
/*******************************************************/
working parts: All except awards
copy this <realm> setup in servel.xml:

<Realm	className="org.apache.catalina.realm.JDBCRealm"
      			driverName="com.mysql.jdbc.Driver"
      			connectionURL="jdbc:mysql://localhost:3306/tomcat_realm_for_dog_championship"
      			connectionName="root"
      			connectionPassword="root"
      			userTable="tomcat_users"
      			userNameCol="user_name"
      			userCredCol="password"
      			userRoleTable="tomcat_users_roles"
      			roleNameCol="role_name"
      	/>
