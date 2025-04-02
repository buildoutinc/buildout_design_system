# frozen_string_literal: true

module BuildoutDesignSystem
  class TablePreview < ViewComponent::Preview
    # @!group Table

    # Table
    # -------------------------
    # Tables are used to organize cells of data.
    def default; end

    # @!endgroup
    
    def bordered
        people = [
          { name: 'John Smith', age: 32, occupation: 'Product Manager', location: 'Chicago', salary: '$110,000', hobbies: 'Gaming, Photography', skills: 'Agile, Scrum', experience: '7 years' },
          { name: 'Sarah Johnson', age: 29, occupation: 'UX Designer', location: 'Seattle', salary: '$95,000', hobbies: 'Painting, Yoga', skills: 'Figma, Sketch', experience: '4 years' },
          { name: 'Mike Chen', age: 35, occupation: 'DevOps Engineer', location: 'Austin', salary: '$130,000', hobbies: 'Rock Climbing, Music', skills: 'AWS, Docker', experience: '8 years' },
          { name: 'Emily Brown', age: 27, occupation: 'Frontend Developer', location: 'Boston', salary: '$90,000', hobbies: 'Dancing, Cycling', skills: 'React, Vue', experience: '3 years' },
          { name: 'David Kim', age: 31, occupation: 'Data Engineer', location: 'Denver', salary: '$115,000', hobbies: 'Skiing, Chess', skills: 'SQL, Hadoop', experience: '5 years' },
          { name: 'Lisa Wang', age: 33, occupation: 'Backend Developer', location: 'Portland', salary: '$105,000', hobbies: 'Gardening, Running', skills: 'Java, Spring', experience: '6 years' },
          { name: 'Alex Taylor', age: 28, occupation: 'Mobile Developer', location: 'Miami', salary: '$98,000', hobbies: 'Surfing, Reading', skills: 'Swift, Kotlin', experience: '4 years' },
          { name: 'Rachel Garcia', age: 30, occupation: 'QA Engineer', location: 'Atlanta', salary: '$85,000', hobbies: 'Cooking, Tennis', skills: 'Selenium, Jest', experience: '5 years' },
          { name: 'Tom Wilson', age: 34, occupation: 'Solutions Architect', location: 'Dallas', salary: '$140,000', hobbies: 'Golf, Podcasting', skills: 'Azure, GCP', experience: '9 years' },
          { name: 'Amy Lee', age: 26, occupation: 'UI Developer', location: 'San Diego', salary: '$88,000', hobbies: 'Swimming, Blogging', skills: 'CSS, Angular', experience: '2 years' },
          { name: 'James Roberts', age: 36, occupation: 'Security Engineer', location: 'Philadelphia', salary: '$125,000', hobbies: 'Hiking, Woodworking', skills: 'Penetration Testing, Cryptography', experience: '10 years' },
          { name: 'Michelle Wong', age: 29, occupation: 'Project Manager', location: 'Minneapolis', salary: '$98,500', hobbies: 'Baking, Volunteering', skills: 'Kanban, JIRA', experience: '5 years' },
          { name: 'Robert Jackson', age: 31, occupation: 'Full Stack Developer', location: 'Raleigh', salary: '$108,000', hobbies: 'Basketball, Coding', skills: 'JavaScript, Python', experience: '6 years' },
          { name: 'Karen Martinez', age: 33, occupation: 'Database Administrator', location: 'Phoenix', salary: '$102,000', hobbies: 'Travel, Photography', skills: 'Oracle, MongoDB', experience: '7 years' },
          { name: 'Daniel Lewis', age: 27, occupation: 'Frontend Engineer', location: 'Detroit', salary: '$94,000', hobbies: 'Music Production, Biking', skills: 'TypeScript, SASS', experience: '4 years' },
          { name: 'Jennifer Adams', age: 32, occupation: 'DevOps Specialist', location: 'Nashville', salary: '$115,000', hobbies: 'Camping, Gaming', skills: 'Kubernetes, Terraform', experience: '6 years' },
          { name: 'Ryan Patel', age: 30, occupation: 'Machine Learning Engineer', location: 'San Francisco', salary: '$135,000', hobbies: 'Chess, Running', skills: 'TensorFlow, PyTorch', experience: '5 years' },
          { name: 'Olivia Wilson', age: 28, occupation: 'UX Researcher', location: 'Washington DC', salary: '$92,000', hobbies: 'Drawing, Meditation', skills: 'User Testing, Prototyping', experience: '3 years' },
          { name: 'Michael Thompson', age: 34, occupation: 'SRE', location: 'Salt Lake City', salary: '$120,000', hobbies: 'Skiing, Mountain Biking', skills: 'Prometheus, Go', experience: '8 years' },
          { name: 'Sophia Chen', age: 29, occupation: 'API Developer', location: 'Charlotte', salary: '$99,000', hobbies: 'Piano, Cooking', skills: 'REST, GraphQL', experience: '5 years' }
        ]

        render_with_template(locals: { people: people })

    end
  end
end
