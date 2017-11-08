### Editing web.xml 
* You need to edit web.xml for securing all the .jspf(Not Completed JSP File) files.
```xml
<security-constraint>
  <display-name>JSP Protection</display-name>
  <web-resource-collection>
    <web-resource-name>SecureJSPPages</web-resource-name>
      <url-pattern>*.jspf</url-pattern>
  </web-resource-collection>
  <auth-constraint>
    <role-name>nobody</role-name>
  </auth-constraint>
</security-constraint>
 
<security-role>
<description>
Nobody should be in this role so JSPF files are protected
from direct access.
</description>
<role-name>nobody</role-name>
</security-role>
```