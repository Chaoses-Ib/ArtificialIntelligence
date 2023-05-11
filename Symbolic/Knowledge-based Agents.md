# Knowledge-based Agents
**Knowledge-based agents** use a process of **reasoning** over an internal **representation** of knowledge to decide what actions to take.

The central component of a knowledge-based agent is its knowledge base. A **knowledge base** is a set of sentences. Each **sentence** is expressed in a language called a **knowledge representation language** and represents some assertion about the world. When the sentence is taken as being given without being derived from other sentences, we call it an **axiom**.

There must be a way to add new sentences to the knowledge base and a way to query what is known. The standard names for these operations are TELL and ASK, respectively. Both operations may involve **inference**—that is, deriving new sentences from old.

```
function KB-AGENT(percept) returns an action
  persistent: KB, a knowledge base
              t, a counter, initially 0, indicating time
  TELL(KB, MAKE-PERCEPT-SENTENCE(percept, t))
  action ← ASK(KB, MAKE-ACTION-QUERY(t))
  TELL(KB, MAKE-ACTION-SENTENCE(action, t))
  t ← t + 1
  return action
```

The details of the representation language are hidden inside three functions that implement the interface between the sensors and actuators on one side and the core representation and reasoning system on the other.

We can also provide a knowledge-based agent with mechanisms that allow it to learn for
itself. These mechanisms, create general knowledge about the environment from a series of percepts. A learning agent can be fully autonomous.[^ai-modern]


[^ai-modern]: Russell, Stuart J. _Artificial Intelligence a Modern Approach_. Pearson Education, Inc., 2010.