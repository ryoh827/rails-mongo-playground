# frozen_string_literal: true

module Resolvers
  class UsersResolver < BaseResolver
    description 'ユーザ取得'

    type [Types::UserType], null: false

    argument :ids, [ID], required: false, description: 'ユーザID'

    def resolve(ids: [])
      User.in(id: ids)
    end
  end
end
