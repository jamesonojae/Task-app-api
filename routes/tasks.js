const { Router, request, response } = require('express');
const router = Router();

const db = require('../db/index');

// get all list of task
router.get('/lists', (request, response) => {
  db.query('select * from tasklists', (err, res) => {
    if (err) throw err;
    response.status(200).send(res);
  });
});

// get a particular task
router.get('/:taskId', (request, response) => {
  const { taskId } = request.params;
  db.query('select * from tasks where taskId = ?', [taskId], (err, res) => {
    if (err) throw err;
    response.status(200).send(res);
  });
});

// to create a new task
router.post('/createTask', (request, response) => {
  const {
    listId,
    taskTitle,
    taskDescription,
    taskType,
    taskStatus,
    createdDateTime,
  } = request.body;

  // const
  db.query(
    `insert into tasks (taskTitle,taskDescription,taskType,taskStatus,createdDateTime) values(?, ?, ?, ?, ?)`,
    [listId, taskTitle, taskDescription, taskType, taskStatus, createdDateTime],
    (err, res) => {
      if (err) throw err;
      // console.log(res);
      response.status(200).send({ message: 'insert sucess' });
    }
  );
});

// to create a new list
router.post('/createList', (request, response) => {
  const { listDescription, createdDateTime } = request.body;

  // const
  db.query(
    'insert into lists ( listDescription, createdDateTime) values(?, ?)',
    [listDescription, createdDateTime],
    (err, res) => {
      if (err) throw err;
      // console.log(res);
      response.status(200).send({ message: 'New list Added' });
    }
  );
});

// to update a task list
router.put('/:taskId/updateTask', (request, response) => {
  const { taskId } = request.params;
  const {
    taskTitle,
    taskDescription,
    taskType,
    taskStatus,
    createdDateTime,
  } = request.body;

  db.query(
    `update tasks set taskTitle = ?, taskDescription =?, taskType = ?, taskStatus =?,createdDateTime = ?
    where taskId = ?`,
    [taskTitle, taskDescription, taskType, taskStatus, createdDateTime, taskId],
    (err, res) => {
      if (err) throw err;

      response.status(200).send({ message: 'Task List updated' });
    }
  );
});

// to delete a task list
router.delete('/:/taskId/deleteTask', (request, response) => {
  const { taskId } = request.params;

  db.query('delete from tasks where taskId = ?', [taskId], (err, res) => {
    if (err) throw err;

    response.status(200).send({ message: 'Task List deleted' });
  });
});
// to export the route so that it can be used by other class.
module.exports = router;
