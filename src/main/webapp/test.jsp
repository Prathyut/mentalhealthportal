<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mental Health Test</title>
</head>
<body>
<%@ include file="stdnavbar.jsp" %> <!-- Include the navbar -->

<h2 align="center">Mental Health Test</h2>

<div align="center">
    <form method="post" action="submittest">
        <p><strong>1. Over the past two weeks, how often have you been bothered by little interest or pleasure in doing things?</strong></p>
        <input type="radio" name="question1" value="Not at all" required> Not at all
        <input type="radio" name="question1" value="Several days"> Several days
        <input type="radio" name="question1" value="More than half the days"> More than half the days
        <input type="radio" name="question1" value="Nearly every day"> Nearly every day
        <br/>

        <p><strong>2. Over the past two weeks, how often have you been feeling down, depressed, or hopeless?</strong></p>
        <input type="radio" name="question2" value="Not at all" required> Not at all
        <input type="radio" name="question2" value="Several days"> Several days
        <input type="radio" name="question2" value="More than half the days"> More than half the days
        <input type="radio" name="question2" value="Nearly every day"> Nearly every day
        <br/>

<p><strong>3. Over the past two weeks, how often have you felt stressed about academic workload or deadlines?</strong></p>
<input type="radio" name="question3" value="Not at all" required> Not at all
<input type="radio" name="question3" value="Several days"> Several days
<input type="radio" name="question3" value="More than half the days"> More than half the days
<input type="radio" name="question3" value="Nearly every day"> Nearly every day
<br/>

<p><strong>4. Over the past two weeks, how often have you felt worried about conflicts or misunderstandings with friends?</strong></p>
<input type="radio" name="question4" value="Not at all" required> Not at all
<input type="radio" name="question4" value="Several days"> Several days
<input type="radio" name="question4" value="More than half the days"> More than half the days
<input type="radio" name="question4" value="Nearly every day"> Nearly every day
<br/>

<p><strong>5. Over the past two weeks, how often have you felt overwhelmed by balancing academics, social life, and personal responsibilities?</strong></p>
<input type="radio" name="question5" value="Not at all" required> Not at all
<input type="radio" name="question5" value="Several days"> Several days
<input type="radio" name="question5" value="More than half the days"> More than half the days
<input type="radio" name="question5" value="Nearly every day"> Nearly every day
<br/>

<p><strong>6. Over the past two weeks, how often have you felt unsupported or misunderstood by family members?</strong></p>
<input type="radio" name="question6" value="Not at all" required> Not at all
<input type="radio" name="question6" value="Several days"> Several days
<input type="radio" name="question6" value="More than half the days"> More than half the days
<input type="radio" name="question6" value="Nearly every day"> Nearly every day
<br/>

<p><strong>7. Over the past two weeks, how often have you been concerned about your relationships with your boyfriend/girlfriend or significant other?</strong></p>
<input type="radio" name="question7" value="Not at all" required> Not at all
<input type="radio" name="question7" value="Several days"> Several days
<input type="radio" name="question7" value="More than half the days"> More than half the days
<input type="radio" name="question7" value="Nearly every day"> Nearly every day
<br/>

<p><strong>8. Over the past two weeks, how often have you felt anxious about your future and career prospects?</strong></p>
<input type="radio" name="question8" value="Not at all" required> Not at all
<input type="radio" name="question8" value="Several days"> Several days
<input type="radio" name="question8" value="More than half the days"> More than half the days
<input type="radio" name="question8" value="Nearly every day"> Nearly every day
<br/>

<p><strong>9. Over the past two weeks, how often have you struggled with managing finances or feeling pressured about expenses?</strong></p>
<input type="radio" name="question9" value="Not at all" required> Not at all
<input type="radio" name="question9" value="Several days"> Several days
<input type="radio" name="question9" value="More than half the days"> More than half the days
<input type="radio" name="question9" value="Nearly every day"> Nearly every day
<br/>

<p><strong>10. Over the past two weeks, how often have you felt a lack of motivation or energy to attend classes or complete assignments?</strong></p>
<input type="radio" name="question10" value="Not at all" required> Not at all
<input type="radio" name="question10" value="Several days"> Several days
<input type="radio" name="question10" value="More than half the days"> More than half the days
<input type="radio" name="question10" value="Nearly every day"> Nearly every day
<br/>

<p><strong>11. Over the past two weeks, how often have you experienced sleep difficulties due to stress or worries?</strong></p>
<input type="radio" name="question11" value="Not at all" required> Not at all
<input type="radio" name="question11" value="Several days"> Several days
<input type="radio" name="question11" value="More than half the days"> More than half the days
<input type="radio" name="question11" value="Nearly every day"> Nearly every day
<br/>

<p><strong>12. Over the past two weeks, how often have you felt lonely or isolated, even when around others?</strong></p>
<input type="radio" name="question12" value="Not at all" required> Not at all
<input type="radio" name="question12" value="Several days"> Several days
<input type="radio" name="question12" value="More than half the days"> More than half the days
<input type="radio" name="question12" value="Nearly every day"> Nearly every day
<br/>
        <!-- Add more questions here as necessary -->

        <br/>
        <input type="submit" value="Submit Test" />
    </form>
</div>

</body>
</html>
