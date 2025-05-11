// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension EchoFlow.API {
  class GetMeQuery: GraphQLQuery {
    public static let operationName: String = "GetMe"
    public static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetMe { currentUser { __typename userId name } }"#
      ))

    public init() {}

    public struct Data: EchoFlow.API.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { EchoFlow.API.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("currentUser", CurrentUser.self),
      ] }

      public var currentUser: CurrentUser { __data["currentUser"] }

      /// CurrentUser
      ///
      /// Parent Type: `FullUser`
      public struct CurrentUser: EchoFlow.API.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { EchoFlow.API.Objects.FullUser }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("userId", String.self),
          .field("name", String.self),
        ] }

        public var userId: String { __data["userId"] }
        public var name: String { __data["name"] }
      }
    }
  }

}