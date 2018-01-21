---
title: Generic Course
---
# {{ site.title }}

**Warning!  The class site is currently under development.  Expect things
to change significantly.**

  <dl class="dl-horizontal">
    <dt>Instructor</dt>
    <dd>
      <a href="{{ site.data.info.instructor_homepage }}">{{ site.data.info.instructor }}</a>
    </dd>
  
    <dt>Meeting Times</dt>
    <dd>{{ site.data.info.meeting_times }}</dd>
  
    <dt>Office Hours</dt>
    <dd>{{ site.data.info.office_hours }}</dd>
    <dd>I also tend to follow an open door policy: Feel free to
      stop by when my door is open to to make an appointment for
      another time.</dd>

    <dt>Class Mentors</dt>
    <dd>
      <ul class="list-unstyled">
        {% for mentor in site.data.info.mentors %}
          <li>{{ mentor }}</li>
        {% endfor %}
      </ul>
    </dd>
  </dl>

## About this course

Welcome to {{ site.courseid }}, Sam's generic course.

Some text about the course.

Read more about the course in [the syllabus](../home/syllabus) and [the schedule](../home/schedule).

