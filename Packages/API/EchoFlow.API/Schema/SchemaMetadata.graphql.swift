// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol EchoFlow.API_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == EchoFlow.API.SchemaMetadata {}

public protocol EchoFlow.API_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == EchoFlow.API.SchemaMetadata {}

public protocol EchoFlow.API_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == EchoFlow.API.SchemaMetadata {}

public protocol EchoFlow.API_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == EchoFlow.API.SchemaMetadata {}

public extension EchoFlow.API {
  typealias SelectionSet = EchoFlow.API_SelectionSet

  typealias InlineFragment = EchoFlow.API_InlineFragment

  typealias MutableSelectionSet = EchoFlow.API_MutableSelectionSet

  typealias MutableInlineFragment = EchoFlow.API_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    public static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "FullUser": return EchoFlow.API.Objects.FullUser
      case "Query": return EchoFlow.API.Objects.Query
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}